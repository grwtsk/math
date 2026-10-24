# basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2b5da41f05b95af4d6cf0b6fed7755743c6351549a16f7e9c3f054f2c94f4ee",
  "kind": "def",
  "lexical_name": "basicOpen",
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
  "slug": "basicopen--265adea2bd5dc2e1a2bd5cc4",
  "source": {
    "blob": "28264c3f984918cdf2cc035f1a92c2286ed2594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 768,
    "path": "GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:265adea2bd5dc2e1a2bd5cc40ae6305f819cd8c3fbc7be3dbd3bd2f222555482",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2b5da41f05b95af4d6cf0b6fed7755743c6351549a16f7e9c3f054f2c94f4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def basicOpen (r : R) : TopologicalSpace.Opens (PrimeSpectrum R) where
  carrier := { x | r ∉ x.asIdeal }
  is_open' := ⟨{r}, Set.ext fun _ => Set.singleton_subset_iff.trans <| Classical.not_not.symm⟩
#align prime_spectrum.basic_open PrimeSpectrum.basicOpen

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28264c3f984918cdf2cc035f1a92c2286ed2594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
