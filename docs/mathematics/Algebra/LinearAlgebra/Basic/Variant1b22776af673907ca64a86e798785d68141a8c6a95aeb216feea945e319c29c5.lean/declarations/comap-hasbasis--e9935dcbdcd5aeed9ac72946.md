# comap_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c4a3231-e6ad-71b9-902d-1c1ec98c3849",
  "kind": "theorem",
  "lexical_name": "comap_hasBasis",
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
  "slug": "comap-hasbasis--e9935dcbdcd5aeed9ac72946",
  "source": {
    "blob": "4ac10f86172ad8ae566a79636ae993598efb394e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 612,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b22776af673907ca64a86e798785d68141a8c6a95aeb216feea945e319c29c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9935dcbdcd5aeed9ac72946be5b9a4611e666610a87819f2ec4e491392316e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1b22776af673907ca64a86e798785d68141a8c6a95aeb216feea945e319c29c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4a3231-e6ad-71b9-902d-1c1ec98c3849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_hasBasis (f : α → β) (l : Filter β) :
    HasBasis (comap f l) (fun s : Set β => s ∈ l) fun s => f ⁻¹' s :=
  ⟨fun _ => mem_comap⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1b22776af673907ca64a86e798785d68141a8c6a95aeb216feea945e319c29c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b22776af673907ca64a86e798785d68141a8c6a95aeb216feea945e319c29c5.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac10f86172ad8ae566a79636ae993598efb394e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
