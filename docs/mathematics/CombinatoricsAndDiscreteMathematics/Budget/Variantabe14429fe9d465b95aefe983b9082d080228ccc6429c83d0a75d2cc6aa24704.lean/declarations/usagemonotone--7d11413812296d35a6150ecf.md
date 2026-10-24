# UsageMonotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4575981a2cd3042a03dac0760d7a37ce6513b4a1410daaa83ad1649814e3e39",
  "kind": "def",
  "lexical_name": "UsageMonotone",
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
  "slug": "usagemonotone--7d11413812296d35a6150ecf",
  "source": {
    "blob": "c98b0133285e7a4f98f0f234211ff729b5eea082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d11413812296d35a6150ecf092ba4cd76f63361a806c015d03be73d7660357d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4575981a2cd3042a03dac0760d7a37ce6513b4a1410daaa83ad1649814e3e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UsageMonotone
    (before after : TraversalUsage) : Prop :=
  before.steps ≤ after.steps ∧
  before.visitedNodes ≤ after.visitedNodes ∧
  before.peakFrontierSize ≤
    after.peakFrontierSize ∧
  before.peakPathLength ≤ after.peakPathLength ∧
  before.persistedBytes ≤ after.persistedBytes ∧
  before.verifierSubmissions ≤
    after.verifierSubmissions ∧
  before.proposals ≤ after.proposals

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98b0133285e7a4f98f0f234211ff729b5eea082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
