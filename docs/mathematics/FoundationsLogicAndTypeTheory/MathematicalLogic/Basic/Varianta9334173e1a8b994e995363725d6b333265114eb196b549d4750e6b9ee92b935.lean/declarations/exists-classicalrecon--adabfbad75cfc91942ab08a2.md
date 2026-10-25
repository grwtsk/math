# Exists.classicalRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d5590a1f47be6e0a0c75e224965375e8fa93ed10001889dd943078abdd47668",
  "kind": "def",
  "lexical_name": "Exists.classicalRecOn",
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
  "slug": "exists-classicalrecon--adabfbad75cfc91942ab08a2",
  "source": {
    "blob": "b3d2ad2f6dcedde4742658c60b74c3c97a6a3f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 801,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adabfbad75cfc91942ab08a20e7acc7c5746a626a513ea37035db7198a0a1d46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d5590a1f47be6e0a0c75e224965375e8fa93ed10001889dd943078abdd47668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Exists.classicalRecOn {α : Sort*} {p : α → Prop} (h : ∃ a, p a)
    {C : Sort*} (H : ∀ a, p a → C) : C :=
  H (Classical.choose h) (Classical.choose_spec h)

/-! ### Declarations about bounded quantifiers -/
section BoundedQuantifiers

variable {α : Sort*} {r p q : α → Prop} {P Q : ∀ x, p x → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d2ad2f6dcedde4742658c60b74c3c97a6a3f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
