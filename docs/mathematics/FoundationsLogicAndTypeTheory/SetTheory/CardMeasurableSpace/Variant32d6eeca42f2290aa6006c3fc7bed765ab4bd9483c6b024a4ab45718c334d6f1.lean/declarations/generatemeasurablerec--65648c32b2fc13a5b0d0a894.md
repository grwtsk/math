# generateMeasurableRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfdc8c24fed83ef596d62fd2f79306fbaf587a3695fb7cacc994bc824d3463e2",
  "kind": "def",
  "lexical_name": "generateMeasurableRec",
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
  "slug": "generatemeasurablerec--65648c32b2fc13a5b0d0a894",
  "source": {
    "blob": "6ea4584e51a926d2eb1fbbd7f5778aab95e332ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65648c32b2fc13a5b0d0a8943906fb126462fdfb494b7bb44654a91254286f5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfdc8c24fed83ef596d62fd2f79306fbaf587a3695fb7cacc994bc824d3463e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generateMeasurableRec (s : Set (Set α)) : (ω₁ : Type u) → Set (Set α)
  | i =>
    let S := ⋃ j : Iio i, generateMeasurableRec s (j.1)
    s ∪ {∅} ∪ compl '' S ∪ Set.range fun f : ℕ → S => ⋃ n, (f n).1
  termination_by generateMeasurableRec s i => i
  decreasing_by exact j.2
#align measurable_space.generate_measurable_rec MeasurableSpace.generateMeasurableRec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ea4584e51a926d2eb1fbbd7f5778aab95e332ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
