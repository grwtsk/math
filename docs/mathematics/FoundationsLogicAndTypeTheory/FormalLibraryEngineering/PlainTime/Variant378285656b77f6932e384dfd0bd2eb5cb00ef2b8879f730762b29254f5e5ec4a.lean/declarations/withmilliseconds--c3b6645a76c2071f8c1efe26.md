# withMilliseconds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb49e4fa0d41e03a2cf58210876f7d9514d48957271bff31f08265d55e7dccd4",
  "kind": "def",
  "lexical_name": "withMilliseconds",
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
  "slug": "withmilliseconds--c3b6645a76c2071f8c1efe26",
  "source": {
    "blob": "36c6655b406ee223ad9e247c74a9f51ccacd387c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3b6645a76c2071f8c1efe2658285924494340408a16e0c9e8107e0eeab942bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb49e4fa0d41e03a2cf58210876f7d9514d48957271bff31f08265d55e7dccd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withMilliseconds (pt : PlainTime) (millis : Millisecond.Ordinal) : PlainTime :=
  let minorPart := pt.nanosecond.emod 1000 (by decide)
  let majorPart := millis.mul_pos 1000000 (by decide) |>.addBounds minorPart
  { pt with nanosecond := majorPart |>.expandTop (by decide) }

/--
Creates a new `PlainTime` by adjusting the `nano` component to the given value.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36c6655b406ee223ad9e247c74a9f51ccacd387c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
