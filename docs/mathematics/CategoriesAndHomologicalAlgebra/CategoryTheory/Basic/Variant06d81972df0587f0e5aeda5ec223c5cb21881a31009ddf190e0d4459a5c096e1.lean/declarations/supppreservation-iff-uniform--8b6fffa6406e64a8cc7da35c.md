# suppPreservation_iff_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:040f8df8-b86c-a5f3-1f5a-1b2722c8b9eb",
  "kind": "theorem",
  "lexical_name": "suppPreservation_iff_uniform",
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
  "slug": "supppreservation-iff-uniform--8b6fffa6406e64a8cc7da35c",
  "source": {
    "blob": "c77a2be70418b9b5a53bfba478b046466f63b4db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 709,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b6fffa6406e64a8cc7da35c8890de98cba60e3b0d8dde553cf47ffe4b8e5251",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:040f8df8-b86c-a5f3-1f5a-1b2722c8b9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem suppPreservation_iff_uniform : q.SuppPreservation ↔ q.IsUniform := by
  constructor
  · intro h α a a' f f' h'
    rw [← PFunctor.supp_eq, ← PFunctor.supp_eq, ← h, h', h]
  · rintro h α ⟨a, f⟩
    rwa [supp_eq_of_isUniform, PFunctor.supp_eq]
#align qpf.supp_preservation_iff_uniform Qpf.suppPreservation_iff_uniform

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77a2be70418b9b5a53bfba478b046466f63b4db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
