# partitionFiltration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b62e284d9972becf89f271842c4688a1d72d3dba78c56064127514e894345323",
  "kind": "def",
  "lexical_name": "partitionFiltration",
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
  "slug": "partitionfiltration--3bd7de64e2e31f700980d952",
  "source": {
    "blob": "23a6b95dd6907324bdd96381c8abd4fc1b1329e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bd7de64e2e31f700980d952c3712ac2fbaed1ea0216bb1851fe278105bdda8c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b62e284d9972becf89f271842c4688a1d72d3dba78c56064127514e894345323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partitionFiltration (ht : ∀ n, MeasurableSet (t n)) :
    Filtration ℕ m where
  seq n := generateFrom (memPartition t n)
  mono' := monotone_nat_of_le_succ (generateFrom_memPartition_le_succ _)
  le' := generateFrom_memPartition_le ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a6b95dd6907324bdd96381c8abd4fc1b1329e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
