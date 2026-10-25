# listEncode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f191b3602fa6b0a1931307f7f55f5aa59c4cb95a96e1f9c1adc270ff524af969",
  "kind": "def",
  "lexical_name": "listEncode",
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
  "slug": "listencode--94b7e21a9ea9ccbe7f341612",
  "source": {
    "blob": "bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94b7e21a9ea9ccbe7f3416123f2100a63f04027fe3a827dd748b2cd38d5bfc09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f191b3602fa6b0a1931307f7f55f5aa59c4cb95a96e1f9c1adc270ff524af969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listEncode : L.Term α → List (α ⊕ (Σ i, L.Functions i))
  | var i => [Sum.inl i]
  | func f ts =>
    Sum.inr (⟨_, f⟩ : Σ i, L.Functions i)::(List.finRange _).flatMap fun i => (ts i).listEncode

/-- Decodes a list of variables and function symbols as a list of terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant8f98694f560ca375f6a7a17bb6a6c94d8b9adaa155c0127e17a931514fa66397.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc60d2ebd8cb07f4dc2ac884ea0c32c914f451bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
