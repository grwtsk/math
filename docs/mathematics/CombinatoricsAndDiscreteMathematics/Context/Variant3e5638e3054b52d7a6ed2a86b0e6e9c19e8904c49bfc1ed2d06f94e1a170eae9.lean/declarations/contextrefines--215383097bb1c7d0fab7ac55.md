# ContextRefines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7dad851aaecea1ecea8e399cf067803afa036f534c8b89bc37fcf6624dc81e",
  "kind": "def",
  "lexical_name": "ContextRefines",
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
  "slug": "contextrefines--215383097bb1c7d0fab7ac55",
  "source": {
    "blob": "579986cfb33eadc52b73f5fbb7a3b4a7ecf63829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:215383097bb1c7d0fab7ac55fd76a9d3c9223ae68fce2d2896b3178f111195e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7dad851aaecea1ecea8e399cf067803afa036f534c8b89bc37fcf6624dc81e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContextRefines (specific general : Context) : Prop :=
  specific.snapshot = general.snapshot ∧
  (∀ value, general.text = some value → specific.text = some value) ∧
  (∀ value, general.sentence = some value → specific.sentence = some value) ∧
  (∀ value, general.discourse = some value → specific.discourse = some value) ∧
  (∀ value, general.task = some value → specific.task = some value) ∧
  (∀ value, general.domain = some value → specific.domain = some value) ∧
  (∀ value, general.speaker = some value → specific.speaker = some value) ∧
  (∀ value, general.time = some value → specific.time = some value) ∧
  (∀ value, general.register = some value → specific.register = some value)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579986cfb33eadc52b73f5fbb7a3b4a7ecf63829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
