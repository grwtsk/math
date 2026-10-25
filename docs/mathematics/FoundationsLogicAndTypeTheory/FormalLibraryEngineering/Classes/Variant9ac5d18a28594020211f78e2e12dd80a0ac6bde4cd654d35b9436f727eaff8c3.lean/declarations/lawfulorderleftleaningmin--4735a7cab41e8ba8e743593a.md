# LawfulOrderLeftLeaningMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec3f19b93567499d5e1dd0a7b36a4f2ca6f11589c9b4a1e5d7c1dab5270b71f1",
  "kind": "class",
  "lexical_name": "LawfulOrderLeftLeaningMin",
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
  "slug": "lawfulorderleftleaningmin--4735a7cab41e8ba8e743593a",
  "source": {
    "blob": "571d41f762de0e22ca3f35ed1ba8f8446aa86f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4735a7cab41e8ba8e743593a710eae54453d0f5b4aeeabbb6b852ff23db851a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec3f19b93567499d5e1dd0a7b36a4f2ca6f11589c9b4a1e5d7c1dab5270b71f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public class LawfulOrderLeftLeaningMin (α : Type u) [Min α] [LE α] where
  min_eq_left : ∀ a b : α, a ≤ b → min a b = a
  min_eq_right : ∀ a b : α, ¬ a ≤ b → min a b = b

end Min

section Max

/--
This typeclass states that `Max.max a b` returns one of its arguments, either `a` or `b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `571d41f762de0e22ca3f35ed1ba8f8446aa86f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
