# measurableSet_notMem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22f8b502-9ce8-aacc-e78e-bffdf6921ba9",
  "kind": "lemma",
  "lexical_name": "measurableSet_notMem_finset",
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
  "slug": "measurableset-notmem-finset--06cd845d1853035e9102ce97",
  "source": {
    "blob": "a8f2e33dfeb38e66172d859d925dacb7d77e30ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1033,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06cd845d1853035e9102ce97ce8c20c0711354d513ecb8370637eee4b91c5fd6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22f8b502-9ce8-aacc-e78e-bffdf6921ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1033–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_notMem_finset (a : α) : MeasurableSet {s : Finset α | a ∉ s} :=
  measurableSet_setOfPred.2 <| measurable_finset_notMem _

variable [Countable α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean#L1033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f2e33dfeb38e66172d859d925dacb7d77e30ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
