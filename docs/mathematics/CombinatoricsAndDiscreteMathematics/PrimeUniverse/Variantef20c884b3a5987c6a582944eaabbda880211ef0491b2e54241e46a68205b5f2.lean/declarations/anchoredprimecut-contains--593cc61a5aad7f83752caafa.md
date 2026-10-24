# AnchoredPrimeCut.contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d11489614e724351751e73918262cee63c00bbecb7779ea18406e412368f9f56",
  "kind": "def",
  "lexical_name": "AnchoredPrimeCut.contains",
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
  "slug": "anchoredprimecut-contains--593cc61a5aad7f83752caafa",
  "source": {
    "blob": "b76fc28d65a422a2c7ed7484f1e31b1ce1c3fe81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:593cc61a5aad7f83752caafab1f3b4847d5a5164f67aef4e217b01ab6a03fa90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d11489614e724351751e73918262cee63c00bbecb7779ea18406e412368f9f56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AnchoredPrimeCut.contains
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime) :
    Place Prime → Prop
  | .archimedean => True
  | .finite prime => prime ∈ cut.primes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76fc28d65a422a2c7ed7484f1e31b1ce1c3fe81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
