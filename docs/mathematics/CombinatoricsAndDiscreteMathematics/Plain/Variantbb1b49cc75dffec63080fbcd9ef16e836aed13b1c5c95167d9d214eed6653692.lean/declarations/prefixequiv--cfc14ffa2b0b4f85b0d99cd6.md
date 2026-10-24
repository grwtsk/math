# prefixEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46604729afcfc602c70016414fd9410bf63eefe485a6fbeb7048429d7307b252",
  "kind": "def",
  "lexical_name": "prefixEquiv",
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
  "slug": "prefixequiv--cfc14ffa2b0b4f85b0d99cd6",
  "source": {
    "blob": "6a06da1ab34fddd6e41657079438d1eaa5b37095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfc14ffa2b0b4f85b0d99cd6e7438a9d851c4a84ad170933a61cb6f45e0b4e2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46604729afcfc602c70016414fd9410bf63eefe485a6fbeb7048429d7307b252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prefixEquiv (hno : ¬ ForbiddenConfiguration P C) (B : Type u)
    (n : Node Ω C) : Space (hw := hw) hno B n ≃
      B × ((a : (schema hw).Key n) →
        (schema hw).FrameParameters (Space (hw := hw) hno B) a →
        Space (hw := hw) hno B ((schema hw).target n a)) :=
  (schema hw).prefixEquiv (dependency_wellFounded hno) B n

end ActualPlain
end PureTypeSystem

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06da1ab34fddd6e41657079438d1eaa5b37095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
