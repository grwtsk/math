# castOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38612fb6b78f220134adc5156a75e932389d66fde2ec0f38c12bff411f3ab533",
  "kind": "def",
  "lexical_name": "castOrderEmbedding",
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
  "slug": "castorderembedding--d8bbeef7a84ee850fc72f12b",
  "source": {
    "blob": "9b494892362dc9d42ca0321d9f3354a9568e96c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8bbeef7a84ee850fc72f12b167970eb7df0fd9fcaea8a710639b1d32f86abd1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38612fb6b78f220134adc5156a75e932389d66fde2ec0f38c12bff411f3ab533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def castOrderEmbedding : ℕ ↪o α :=
  OrderEmbedding.ofStrictMono Nat.cast Nat.strictMono_cast

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b494892362dc9d42ca0321d9f3354a9568e96c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
