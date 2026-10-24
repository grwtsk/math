# softmaxComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d228c49811b6dc1a9be73b478af6bcc2cd83bc6cb3226036fd1c123f1e8fad2",
  "kind": "def",
  "lexical_name": "softmaxComponent",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "softmaxcomponent--252003a223b3ea57dc28439d",
  "source": {
    "blob": "54dccc291f0be57076562be279f113b8e1fa7e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:252003a223b3ea57dc28439d39bcd5ffa7ac275fa50e3ea210ced43498ce1577",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d228c49811b6dc1a9be73b478af6bcc2cd83bc6cb3226036fd1c123f1e8fad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def softmaxComponent (x : IntervalVector) (k : Nat) (prec : Int) : IntervalDyadic :=
  if hk : k < x.length then
    let x_k := x[k]

    -- 1. Compute differences x_j - x_k
    let diffs := x.map (fun x_j => IntervalDyadic.sub x_j x_k)

    -- 2. Exponentiate
    let exps := expVector diffs prec

    -- 3. Sum (this includes j=k where exp(0)=1, which is correct)
    let zeroInterval := IntervalDyadic.singleton (Core.Dyadic.ofInt 0)
    let sum_exps := exps.foldl (fun acc I => IntervalDyadic.add acc I) zeroInterval

    -- 4. Invert: 1 / sum
    let sum_rat := sum_exps.toIntervalRat
    -- Sum of exponentials is always positive
    if h_pos : sum_rat.lo > 0 then
       -- [1/hi, 1/lo]
       let inv := IntervalRat.invNonzero
          ⟨sum_rat, fun hcz => not_lt.mpr hcz.1 h_pos⟩
       IntervalDyadic.ofIntervalRat inv prec
    else
       -- Fallback: When interval arithmetic is too loose to prove sum > 0,
       -- we use the conservative bound [0, 1] since softmax ∈ (0, 1) always.
       ⟨Core.Dyadic.ofInt 0, Core.Dyadic.ofInt 1, by simp [Core.Dyadic.toRat_ofInt]⟩
  else
    default

/-- Full Softmax layer -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54dccc291f0be57076562be279f113b8e1fa7e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
