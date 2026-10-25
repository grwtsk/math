# UniformConductorThreeTypeIIMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:175d2b230e4ba1f4a21f314666e84da47d635d76125ced6985d76dfc26a095b3",
  "kind": "def",
  "lexical_name": "UniformConductorThreeTypeIIMaximal",
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
  "slug": "uniformconductorthreetypeiimaximal--0c9490e68a98871b54b2ad92",
  "source": {
    "blob": "aa9bf99951fab2068b68651d0dd9462e3d1cbae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c9490e68a98871b54b2ad929bf9af839e627b1be63d64df9fdb65955f9f5249",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:175d2b230e4ba1f4a21f314666e84da47d635d76125ced6985d76dfc26a095b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniformConductorThreeTypeIIMaximal
    (route : ConductorThreeVaughanPacketRoute) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ∀ x : ℕ, x ≤ 2 * N →
          ‖route.typeIISignedPairing N x‖ ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- Corrected Wang--Zahl program: one fixed coefficient-level scaffold plus
the specific Type II maximal theorem.  The program contains no generic
phase-conjugated Gram bound. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9bf99951fab2068b68651d0dd9462e3d1cbae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
