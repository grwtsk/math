# Simps.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:320f69a3d6930128a0d25900c12f361a2c612b69bd4090b21db4d33068125467",
  "kind": "def",
  "lexical_name": "Simps.apply",
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
  "slug": "simps-apply--cc2d0b00d9a97e60afe0817d",
  "source": {
    "blob": "985d7b766ef00deaf90e8ed4ade9fb78f1ee2608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc2d0b00d9a97e60afe0817d463ebc03086f3c907fe6ccf322be335d43af6508",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:320f69a3d6930128a0d25900c12f361a2c612b69bd4090b21db4d33068125467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Simps.apply {R α β : Type*} [CommSemiring R]
    [AddCommMonoid α] [Module R α] [AddCommMonoid β]
    [Module R β] [CoalgebraStruct R α] [CoalgebraStruct R β]
    (f : α →ₗc[R] β) : α → β := f

initialize_simps_projections CoalgHom (toFun → apply)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985d7b766ef00deaf90e8ed4ade9fb78f1ee2608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
