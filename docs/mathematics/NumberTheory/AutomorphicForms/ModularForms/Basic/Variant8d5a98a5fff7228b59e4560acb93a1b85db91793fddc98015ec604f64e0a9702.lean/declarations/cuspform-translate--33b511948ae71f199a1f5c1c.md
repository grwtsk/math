# CuspForm.translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc372e15013e62443efe68a03b8d16cb5ac36b7331b2fbb029c29d31f547c5f7",
  "kind": "def",
  "lexical_name": "CuspForm.translate",
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
  "slug": "cuspform-translate--33b511948ae71f199a1f5c1c",
  "source": {
    "blob": "5d7f535c2aa0bbb435276b07f27715d8f492de64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 467,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33b511948ae71f199a1f5c1c96078d70e94bbf1fc3f0baf1dfded05f34873857",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc372e15013e62443efe68a03b8d16cb5ac36b7331b2fbb029c29d31f547c5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CuspForm.translate [CuspFormClass F Γ k] :
    CuspForm (Γ.map <| MulAut.conj g⁻¹) k where
  __ := ModularForm.translate f g
  zero_at_infty' h := by simpa [SlashAction.slash_mul] using CuspFormClass.zero_at_infty f (g * h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8d5a98a5fff7228b59e4560acb93a1b85db91793fddc98015ec604f64e0a9702.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7f535c2aa0bbb435276b07f27715d8f492de64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
