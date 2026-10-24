# baseSupp_apply_smul_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:647ca5f7-9c77-65ca-e5c8-434ebad9b59f",
  "kind": "lemma",
  "lexical_name": "baseSupp_apply_smul_f",
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
  "slug": "basesupp-apply-smul-f--39979b9898ae023b061d9cb0",
  "source": {
    "blob": "f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 332,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39979b9898ae023b061d9cb0606862535d709a52de09cb10fe693fd7d69005da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:647ca5f7-9c77-65ca-e5c8-434ebad9b59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma baseSupp_apply_smul_f (i : ι) (x : H) :
    b.baseSupp i x • b.f i = -⁅x, b.f i⁆ := by
  rw [← neg_eq_iff_eq_neg, ← neg_smul, ← LinearMap.neg_apply]
  have := b.symm.baseSupp_apply_smul_e i x
  simp only [symm_baseSupp, Pi.neg_apply, symm_e] at this
  exact this

variable [IsDomain R] [CharZero R]

/-- Lemma 4.4 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
