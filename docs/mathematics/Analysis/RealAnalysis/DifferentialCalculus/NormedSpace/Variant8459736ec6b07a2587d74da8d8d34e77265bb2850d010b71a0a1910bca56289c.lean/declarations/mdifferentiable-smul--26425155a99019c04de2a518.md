# MDifferentiable.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83ad0411-dcad-4b23-0996-5a32d974fcf6",
  "kind": "theorem",
  "lexical_name": "MDifferentiable.smul",
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
  "slug": "mdifferentiable-smul--26425155a99019c04de2a518",
  "source": {
    "blob": "6451c31dfa6c23e7a3354924b201e95600ffaac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 333,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26425155a99019c04de2a518fa8f9147ca8a174417c39d8d4c03b1bb3d369327",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ad0411-dcad-4b23-0996-5a32d974fcf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiable.smul (hf : MDiff f) (hg : MDiff g) : MDiff (f • g) :=
  fun x ↦ (hf x).smul (hg x)

-- TODO: deprecate in favour of `mvfderiv_smul`, then delete this lemma
/-- Given maps `f`, `g` from a manifold into a field `𝕜` and `𝕜`-vector space `V`, respectively, the
formula for the `mfderiv` (differential) of their scalar multiplication `f • g`.

Mathematically speaking the formula is `d(f • g) = f • dg + df ⊗ g`, i.e.
`mfderiv% (f • g) x = f x • mfderiv% g x + toSpanSingleton 𝕜 (g x) ∘L mfderiv% f x`,
but this doesn't typecheck because `mfderiv% (f • g) x` and `mfderiv% g x` take values in different
tangent spaces -- respectively the tangent spaces to `V` at `(f • g) x` and `g x`. Of course, both
these tangent spaces can be canonically identified with `V`.

This lemma phrases the formula using the equiv `NormedSpace.fromTangentSpace`, which provides this
canonical identification. (It would also be possible to phrase the formula without this equiv,
instead using casting and definitional abuse.)

It is good practice to use the equiv `NormedSpace.fromTangentSpace` throughout a computation. If
this is done, typically `mfderiv% (f • g) x` will only turn up paired with this equiv (i.e., in an
expression `(fromTangentSpace _) ∘L mfderiv% (f • g) x`), and the more convenient lemma
`fromTangentSpace_mfderiv_smul` (see below) can be used instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6451c31dfa6c23e7a3354924b201e95600ffaac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
