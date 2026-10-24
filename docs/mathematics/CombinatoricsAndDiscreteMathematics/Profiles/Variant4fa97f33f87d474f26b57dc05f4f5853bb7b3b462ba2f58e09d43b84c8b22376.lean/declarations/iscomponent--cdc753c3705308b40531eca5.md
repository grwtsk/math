# IsComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:493570020a4dac6af675bb3fcd9f2d39210336243947d99c850c0faa8af78009",
  "kind": "def",
  "lexical_name": "IsComponent",
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
  "slug": "iscomponent--cdc753c3705308b40531eca5",
  "source": {
    "blob": "6e2d4be196bb5305ccad1d6b8167c326567f0919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variant4fa97f33f87d474f26b57dc05f4f5853bb7b3b462ba2f58e09d43b84c8b22376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdc753c3705308b40531eca5e67cc48618043a4ff18f9b9823141c3dc5a2a3f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Profiles/Variant4fa97f33f87d474f26b57dc05f4f5853bb7b3b462ba2f58e09d43b84c8b22376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:493570020a4dac6af675bb3fcd9f2d39210336243947d99c850c0faa8af78009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsComponent {V : Type*} (E : V → V → Bool → Prop) (C : Set V) : Prop :=
  ∃ r ∈ C, ∀ v, v ∈ C ↔ Reach E r v ∧ Reach E v r

namespace SignedPath

variable {V : Type*} {E : V → V → Bool → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Profiles/Variant4fa97f33f87d474f26b57dc05f4f5853bb7b3b462ba2f58e09d43b84c8b22376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variant4fa97f33f87d474f26b57dc05f4f5853bb7b3b462ba2f58e09d43b84c8b22376.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e2d4be196bb5305ccad1d6b8167c326567f0919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
