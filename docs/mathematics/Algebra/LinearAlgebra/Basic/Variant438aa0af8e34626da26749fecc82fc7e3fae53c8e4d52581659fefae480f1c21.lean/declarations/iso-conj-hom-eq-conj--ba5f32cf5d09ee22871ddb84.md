# Iso.conj_hom_eq_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1189a26b8f813a8acbe4f1c88d680d0752caf734",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc67bb03-677e-a042-51dd-0285a0506136",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b78ccc63-0eb5-a731-4b44-34ed24f46356",
  "kind": "theorem",
  "lexical_name": "Iso.conj_hom_eq_conj",
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
  "slug": "iso-conj-hom-eq-conj--ba5f32cf5d09ee22871ddb84",
  "source": {
    "blob": "1189a26b8f813a8acbe4f1c88d680d0752caf734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5f32cf5d09ee22871ddb845663d8cab7233e32d6f80d9c6cea42b04418c58a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78ccc63-0eb5-a731-4b44-34ed24f46356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iso.conj_hom_eq_conj {V W : FGModuleCat R} (i : V ≅ W) (f : End V) :
    (Iso.conj i f).hom = (LinearEquiv.conj (isoToLinearEquiv i) f.hom) :=
  rfl

end CommRing

section Field

variable (K : Type u) [Field K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1189a26b8f813a8acbe4f1c88d680d0752caf734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
