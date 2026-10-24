# mFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae45db77dd53cf8ac4b6d70ba565d146ad40e201afd8f495b1348680702afb57",
  "kind": "def",
  "lexical_name": "mFourier",
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
  "slug": "mfourier--25c3b24dc1e86b1a284ffbf7",
  "source": {
    "blob": "06cdaf65acf696340d7f8c72eee642210e0f54db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25c3b24dc1e86b1a284ffbf776a1e101e38f5607c85f682940a97e83f7c6583a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae45db77dd53cf8ac4b6d70ba565d146ad40e201afd8f495b1348680702afb57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mFourier : C(UnitAddTorus d, ℂ) where
  toFun x := ∏ i : d, fourier (n i) (x i)
  continuous_toFun := continuous_finset_prod _
    fun i _ ↦ (fourier (n i)).continuous.comp (continuous_apply i)

variable {n} {x : UnitAddTorus d}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cdaf65acf696340d7f8c72eee642210e0f54db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
