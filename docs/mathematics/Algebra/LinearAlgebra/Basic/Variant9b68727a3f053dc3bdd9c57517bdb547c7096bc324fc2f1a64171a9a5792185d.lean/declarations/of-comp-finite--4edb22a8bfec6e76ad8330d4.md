# of_comp_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b55e4242f03c0d0d13f93e52761c146de966af7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b68727a3f053dc3bdd9c57517bdb547c7096bc324fc2f1a64171a9a5792185d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19478685-2ff9-cd62-e34a-0b9ab9ad0383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3824ff72-a07e-0fa5-8046-73954c7dbb4e",
  "kind": "theorem",
  "lexical_name": "of_comp_finite",
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
  "slug": "of-comp-finite--4edb22a8bfec6e76ad8330d4",
  "source": {
    "blob": "2b55e4242f03c0d0d13f93e52761c146de966af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 474,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9b68727a3f053dc3bdd9c57517bdb547c7096bc324fc2f1a64171a9a5792185d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edb22a8bfec6e76ad8330d4c5793ada933acc88bdfcabb3019962b6fa1669e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9b68727a3f053dc3bdd9c57517bdb547c7096bc324fc2f1a64171a9a5792185d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3824ff72-a07e-0fa5-8046-73954c7dbb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_comp_finite {f : A →+* B} {g : B →+* C} (h : (g.comp f).Finite) : g.Finite := by
  algebraize [f, g, g.comp f]
  exact .of_restrictScalars_finite A B C

end Finite

end RingHom

namespace AlgHom

variable {R A B C : Type*} [CommRing R]
variable [CommRing A] [CommRing B] [CommRing C]
variable [Algebra R A] [Algebra R B] [Algebra R C]

namespace Finite

variable (R A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9b68727a3f053dc3bdd9c57517bdb547c7096bc324fc2f1a64171a9a5792185d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9b68727a3f053dc3bdd9c57517bdb547c7096bc324fc2f1a64171a9a5792185d.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b55e4242f03c0d0d13f93e52761c146de966af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
