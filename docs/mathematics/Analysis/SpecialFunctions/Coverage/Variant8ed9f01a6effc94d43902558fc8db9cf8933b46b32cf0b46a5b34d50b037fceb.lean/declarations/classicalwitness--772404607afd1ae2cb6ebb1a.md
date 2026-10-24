# classicalWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b4b762a47774f437c8b45bd04ba010f603e88b99bb0de8d7bd4dd70eb1878b1",
  "kind": "def",
  "lexical_name": "classicalWitness",
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
  "slug": "classicalwitness--772404607afd1ae2cb6ebb1a",
  "source": {
    "blob": "a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 6,
    "path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:772404607afd1ae2cb6ebb1a2a75ebf535eae2c229b72e162b278b995c9138c3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b4b762a47774f437c8b45bd04ba010f603e88b99bb0de8d7bd4dd70eb1878b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classicalWitness : ClassicalSmoothAnalyticFunction -> ExtendedEML
  | .one => ExtendedEML.finite emlOneTree
  | .pi => ExtendedEML.constPi
  | .e => ExtendedEML.constE
  | .I => ExtendedEML.constI
  | .var _ => ExtendedEML.finite emlVarTree
  | .neg f => ExtendedEML.neg (classicalWitness f)
  | .inv f => ExtendedEML.inv (classicalWitness f)
  | .add a b => ExtendedEML.add (classicalWitness a) (classicalWitness b)
  | .sub a b => ExtendedEML.sub (classicalWitness a) (classicalWitness b)
  | .mul a b => ExtendedEML.mul (classicalWitness a) (classicalWitness b)
  | .div a b => ExtendedEML.div (classicalWitness a) (classicalWitness b)
  | .pow a b => ExtendedEML.pow (classicalWitness a) (classicalWitness b)
  | .exp f => ExtendedEML.compose (ExtendedEML.finite emlExpTree) (classicalWitness f)
  | .log f => ExtendedEML.compose (ExtendedEML.finite emlLogTree) (classicalWitness f)
  | .sqrt f => ExtendedEML.sqrt (classicalWitness f)
  | .sin f => ExtendedEML.sin (classicalWitness f)
  | .cos f => ExtendedEML.cos (classicalWitness f)
  | .tan f => ExtendedEML.tan (classicalWitness f)
  | .compose a b => ExtendedEML.compose (classicalWitness a) (classicalWitness b)
  | .finiteSum _ => ExtendedEML.finiteSum []
  | .finiteProduct _ => ExtendedEML.finiteProduct []

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
