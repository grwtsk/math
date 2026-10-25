# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:151b9d170373c88fd7797cddd2517e2ba5cf02d897a8a225a3584329e682a551",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--68ff7b006fd76f18ac3977d2",
  "source": {
    "blob": "d34666cf5bd15f4e1d1b1719bdccca438c3c7790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68ff7b006fd76f18ac3977d21e516f610de4ae8105a7f336e94b0f101546bb3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:151b9d170373c88fd7797cddd2517e2ba5cf02d897a8a225a3584329e682a551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Nonempty Signal := by exact SignalImpl.property

namespace Signal

/--
This creates a `Signal` in the initial state and doesn't start listening yet.
- If `repeating` is `false` this constructs a signal handler that resolves once when the specified
  signal `signum` is received, then automatically stops listening.
- If `repeating` is `true` this constructs a signal handler that resolves each time the specified
  signal `signum` is received and continues listening. A repeating signal handler will only be
  freed after `Signal.stop` is called.
-/
@[extern "lean_uv_signal_mk"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variantba9fa075290ce86ac6bced0cd79fdaf4eeb17c63fb0e0d2f67bae35d691cc37d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34666cf5bd15f4e1d1b1719bdccca438c3c7790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
