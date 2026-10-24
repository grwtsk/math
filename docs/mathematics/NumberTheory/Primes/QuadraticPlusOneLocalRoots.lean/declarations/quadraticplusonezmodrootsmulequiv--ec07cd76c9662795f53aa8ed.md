# quadraticPlusOneZModRootsMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeff5e2e40737c8b0dd759d5279bb35445786903909398e4f2e04e99f7370777",
  "kind": "def",
  "lexical_name": "quadraticPlusOneZModRootsMulEquiv",
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
  "slug": "quadraticplusonezmodrootsmulequiv--ec07cd76c9662795f53aa8ed",
  "source": {
    "blob": "e29543503364c65c33a691c12309f73f1b3fb060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec07cd76c9662795f53aa8ed48147e37e83e9c754831bcba98e3f717d46dabd7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeff5e2e40737c8b0dd759d5279bb35445786903909398e4f2e04e99f7370777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quadraticPlusOneZModRootsMulEquiv
    {m n : ℕ} [NeZero m] [NeZero n]
    (hcop : m.Coprime n) :
    QuadraticPlusOneZModRoot (m * n) ≃
      QuadraticPlusOneZModRoot m ×
        QuadraticPlusOneZModRoot n := by
  let e := ZMod.chineseRemainder hcop
  refine
    { toFun := fun z => ?_
      invFun := fun xy => ?_
      left_inv := ?_
      right_inv := ?_ }
  · let y := e z.1
    have hz := z.2
    have hmap := congrArg e hz
    refine
      (⟨y.1, ?_⟩,
       ⟨y.2, ?_⟩)
    · simpa [y, e] using congrArg Prod.fst hmap
    · simpa [y, e] using congrArg Prod.snd hmap
  · refine ⟨e.symm (xy.1.1, xy.2.1), ?_⟩
    apply e.injective
    simp only [map_pow, RingEquiv.apply_symm_apply, Prod.pow_mk, xy.1.2, xy.2.2, map_neg, map_one]
    rfl
  · intro z
    apply Subtype.ext
    simp [e]
  · intro xy
    apply Prod.ext <;> apply Subtype.ext <;> simp [e]

/-- Root counts are multiplicative on coprime positive moduli. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29543503364c65c33a691c12309f73f1b3fb060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
