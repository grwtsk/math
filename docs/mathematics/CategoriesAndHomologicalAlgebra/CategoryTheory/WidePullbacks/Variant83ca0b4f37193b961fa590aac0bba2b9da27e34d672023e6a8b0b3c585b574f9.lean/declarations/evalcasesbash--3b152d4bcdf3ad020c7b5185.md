# evalCasesBash'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f19c7ce4bd47267707178a66f1244891cba274f35211696b03029432861a4278",
  "kind": "def",
  "lexical_name": "evalCasesBash'",
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
  "slug": "evalcasesbash--3b152d4bcdf3ad020c7b5185",
  "source": {
    "blob": "65c4b570a328ba9d3cf3e37da60a05289cbb2627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant83ca0b4f37193b961fa590aac0bba2b9da27e34d672023e6a8b0b3c585b574f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b152d4bcdf3ad020c7b5185364a6b792949ca324c1018574595e1dbd4a6f48c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant83ca0b4f37193b961fa590aac0bba2b9da27e34d672023e6a8b0b3c585b574f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f19c7ce4bd47267707178a66f1244891cba274f35211696b03029432861a4278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalCasesBash' : TacticM Unit := do
  evalTactic
    (← `(tactic| casesm* WidePushoutShape _,
      (_ : WidePushoutShape _) ⟶ (_ : WidePushoutShape _) ))

attribute [local aesop safe tactic (rule_sets := [CategoryTheory])] evalCasesBash'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant83ca0b4f37193b961fa590aac0bba2b9da27e34d672023e6a8b0b3c585b574f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant83ca0b4f37193b961fa590aac0bba2b9da27e34d672023e6a8b0b3c585b574f9.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c4b570a328ba9d3cf3e37da60a05289cbb2627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
