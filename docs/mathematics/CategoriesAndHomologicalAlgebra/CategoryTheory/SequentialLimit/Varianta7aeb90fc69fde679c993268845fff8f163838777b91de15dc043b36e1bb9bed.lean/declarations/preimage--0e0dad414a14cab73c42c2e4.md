# preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2102d393c018c46896a2b112a2b490ce6d42ea065a7c81d2a8ed27e125ee9ee9",
  "kind": "def",
  "lexical_name": "preimage",
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
  "slug": "preimage--0e0dad414a14cab73c42c2e4",
  "source": {
    "blob": "66cff42314b52594d657eb0db1dcfcf2035086f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e0dad414a14cab73c42c2e40154ca9eb5ae3b4994fd70a7e15de644db04f39d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2102d393c018c46896a2b112a2b490ce6d42ea065a7c81d2a8ed27e125ee9ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def preimage (X : C) (y : (F.obj ⟨0⟩).val.obj ⟨X⟩) :
    (n : ℕ) → ((Y : C) × (F.obj ⟨n⟩).val.obj ⟨Y⟩)
  | 0 => ⟨X, y⟩
  | (n+1) => ⟨(exists_effectiveEpi hF n (preimage X y n).1 (preimage X y n).2).choose,
      (exists_effectiveEpi hF n
        (preimage X y n).1 (preimage X y n).2).choose_spec.choose_spec.choose_spec.choose⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cff42314b52594d657eb0db1dcfcf2035086f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
