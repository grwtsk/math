# typeIICutoffMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bf944cf6faec32f086bd3d928f05ff2b1942080f5de25d55635b89c4f7a1367",
  "kind": "def",
  "lexical_name": "typeIICutoffMatrix",
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
  "slug": "typeiicutoffmatrix--f2b43dc040a4a058491f7811",
  "source": {
    "blob": "9720bc3ca0f50f995d9b09ab0c19715237c812d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b43dc040a4a058491f78110b2d5914995a73d88da2eb3d997f98454a95d5d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bf944cf6faec32f086bd3d928f05ff2b1942080f5de25d55635b89c4f7a1367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeIICutoffMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    Matrix Left Right ℂ :=
  fun left right ↦ if leftIndex left * rightIndex right ≤ x then 1 else 0

/-- The arithmetic complex-bilinear pairing through a matrix.

The historical name is retained for compatibility, but there is no
conjugation here.  Hilbert-space realization conjugates the synthesized left
coefficient vector explicitly below. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9720bc3ca0f50f995d9b09ab0c19715237c812d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
