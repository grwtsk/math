# prototypeTrustedBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d1c87d3c6ec3643ebef41751a2be15cbe332203d27e4090dadeb735fc438421",
  "kind": "def",
  "lexical_name": "prototypeTrustedBase",
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
  "slug": "prototypetrustedbase--9151dab33684da1bf2230851",
  "source": {
    "blob": "7029e9d44c77b559d13a989d7a8f52d45ffe2818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9151dab33684da1bf2230851fb618041c7a03c40e8c84ee74d82669b5c8d98d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d1c87d3c6ec3643ebef41751a2be15cbe332203d27e4090dadeb735fc438421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeTrustedBase (model : PrototypeModel) : TrustedBaseClosure where
  checkerId := ⟨"artifact:lean-kernel-4.32.0"⟩
  checkerVersion := "Lean 4.32.0"
  allowedAxioms := ["propext", "Classical.choice", "Quot.sound"]
  observedAxioms := []
  closureComplete := false
  evidence :=
    [⟨"artifact:axiom-audit:" ++ (prototypeModelId model).value⟩]

/-- One semantic object record per finite wrapper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7029e9d44c77b559d13a989d7a8f52d45ffe2818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
