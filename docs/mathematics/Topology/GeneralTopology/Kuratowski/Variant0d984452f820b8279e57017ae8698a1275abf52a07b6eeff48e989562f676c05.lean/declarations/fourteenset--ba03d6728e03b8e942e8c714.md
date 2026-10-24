# fourteenSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e7820cccbbd30925abaee7f83706367c1e2126c135bc1ec426ebe0b05840b26",
  "kind": "def",
  "lexical_name": "fourteenSet",
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
  "slug": "fourteenset--ba03d6728e03b8e942e8c714",
  "source": {
    "blob": "2c28bb271714c425f877682fe5529ec85a4b3f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba03d6728e03b8e942e8c714d27f9c2bf13714d2f079693bce822b85e8e4bbd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e7820cccbbd30925abaee7f83706367c1e2126c135bc1ec426ebe0b05840b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fourteenSet : Set ℝ := Ioo 0 1 ∪ Ioo 1 2 ∪ {3} ∪ (Icc 4 5 ∩ range Rat.cast)

/-!
Let the fourteenSet be s: `(0,1) ∪ (1,2) ∪ {3} ∪ ([4,5] ∩ ℚ)`
Then the following sets can be obtained via the closure and complement operations:
* `cs = (-∞,0] ∪ {1} ∪ [2,3) ∪ (3,4) ∪ ([4,5] \ ℚ) ∪ (5,∞)`
* `kcs = (-∞,0] ∪ {1} ∪ [2,∞)`
* `ckcs = (0,1) ∪ (1,2)`
* `kckcs = [0,2]`
* `ckckcs = (-∞,0) ∪ (2,∞)`
* `kckckcs = (-∞,0] ∪ [2,∞)`
* `ckckckcs = (0,2)`
* `ks = [0,2] ∪ {3} ∪ [4,5]`
* `cks = (-∞,0) ∪ (2,3) ∪ (3,4) ∪ (5,∞)`
* `kcks = (-∞,0] ∪ [2,4] ∪ [5,∞)`
* `ckcks = (0,2) ∪ (4,5)`
* `kckcks = [0,2] ∪ [4,5]`
* `ckckcks = (-∞,0) ∪ (2,4) ∪ (5,∞)`

We can see that the sets are pairwise distinct, so we have 14 distinct sets.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c28bb271714c425f877682fe5529ec85a4b3f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
