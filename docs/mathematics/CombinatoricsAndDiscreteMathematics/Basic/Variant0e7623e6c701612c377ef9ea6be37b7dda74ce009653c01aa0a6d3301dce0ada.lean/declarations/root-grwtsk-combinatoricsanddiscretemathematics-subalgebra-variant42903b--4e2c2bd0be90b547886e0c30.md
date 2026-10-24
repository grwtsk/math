# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Subalgebra.Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.AlgEquiv.subsingleton_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80f6b597f9d0255b2b5d270c4ebf2b6bad3c78e00443a9f341eaf2ae7145e834",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Subalgebra.Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.AlgEquiv.subsingleton_left",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-subalgebra-variant42903b--4e2c2bd0be90b547886e0c30",
  "source": {
    "blob": "d409b83dda9c620b7c4bf145ecb0328dd9524565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1026,
    "line": 1022,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e2c2bd0be90b547886e0c30c7bb96562a0384349529603f7de0c855171cd0c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80f6b597f9d0255b2b5d270c4ebf2b6bad3c78e00443a9f341eaf2ae7145e834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1026.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Subalgebra.Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.AlgEquiv.subsingleton_left [Subsingleton (Subalgebra R A)] :
    Subsingleton (A ≃ₐ[R] B) :=
  ⟨fun f g => AlgEquiv.ext fun x => AlgHom.ext_iff.mp (Subsingleton.elim f.toAlgHom g.toAlgHom) x⟩
#align alg_equiv.subsingleton_left AlgEquiv.subsingleton_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d409b83dda9c620b7c4bf145ecb0328dd9524565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
