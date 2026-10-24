# puncturedHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0154b5067d35d86517a73eb0b063ff8608568b2188f118e457ac9c5369e555e",
  "kind": "def",
  "lexical_name": "puncturedHomotopy",
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
  "slug": "puncturedhomotopy--bc735eeae11cdb76aa6b6bbc",
  "source": {
    "blob": "4c73870f61b52899371703ac07a3d1f7538106de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc735eeae11cdb76aa6b6bbc7ffe22a2c74ea4209f1eb764a4f6ae7b3536d6fa",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0154b5067d35d86517a73eb0b063ff8608568b2188f118e457ac9c5369e555e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def puncturedHomotopy (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (ha : a n = a 0) (hb : b n = b 0)
    (hz : CellNonzero F n a b) :
    HomotopyWith (sourceLift F hF hn a b hz) (polygonLift F hF hn a b hz)
      (fun g => g 0 = g 1) where
  toFun p := ⟨homotopy F hF n a b p, homotopy_nonzero F hF hn a b hz p.1 p.2⟩
  continuous_toFun := (map_continuous (homotopy F hF n a b)).subtype_mk _
  map_zero_left t := Subtype.ext ((homotopy F hF n a b).map_zero_left t)
  map_one_left t := Subtype.ext ((homotopy F hF n a b).map_one_left t)
  prop' lam := Subtype.ext (homotopy_closed F hF ha hb lam)

/-- The global basepoint is explicit; it generally moves, unlike a based path homotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c73870f61b52899371703ac07a3d1f7538106de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
