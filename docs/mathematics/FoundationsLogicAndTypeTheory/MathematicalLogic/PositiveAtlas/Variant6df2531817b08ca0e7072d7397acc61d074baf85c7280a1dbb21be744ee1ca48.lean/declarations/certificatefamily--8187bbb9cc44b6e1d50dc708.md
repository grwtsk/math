# CertificateFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:354de34bd72848fb247c0f0f92c968707cd0a8714ba00a483950683958905a57",
  "kind": "structure",
  "lexical_name": "CertificateFamily",
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
  "slug": "certificatefamily--8187bbb9cc44b6e1d50dc708",
  "source": {
    "blob": "e6744ae61467f525ffc30fcb8d1009d93abfaef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8187bbb9cc44b6e1d50dc70808cb3943b0009128b1e4e2b647af2df017df0091",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:354de34bd72848fb247c0f0f92c968707cd0a8714ba00a483950683958905a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertificateFamily (State : Type u) (Index : Type v) where
  /-- Value type of each observable, independently of the state and index universes. -/
  value : Index → Type w
  /-- State observation with the value type assigned to its index. -/
  observe : (i : Index) → State → value i

namespace CertificateFamily

variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)

/-- Compatibility accessor for the now-explicit observable index type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant6df2531817b08ca0e7072d7397acc61d074baf85c7280a1dbb21be744ee1ca48.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6744ae61467f525ffc30fcb8d1009d93abfaef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
