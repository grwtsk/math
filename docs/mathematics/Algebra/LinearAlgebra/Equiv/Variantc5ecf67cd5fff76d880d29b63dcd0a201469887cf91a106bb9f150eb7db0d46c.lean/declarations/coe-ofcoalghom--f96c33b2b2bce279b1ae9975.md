# coe_ofCoalgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17aff653-34a2-3f20-d854-e4eff7b40dd0",
  "kind": "theorem",
  "lexical_name": "coe_ofCoalgHom",
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
  "slug": "coe-ofcoalghom--f96c33b2b2bce279b1ae9975",
  "source": {
    "blob": "3de4d86e2ac255c117bdb11d25eada9edcf0002e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variantc5ecf67cd5fff76d880d29b63dcd0a201469887cf91a106bb9f150eb7db0d46c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96c33b2b2bce279b1ae9975d1bd503e9a7b894ed374bd2d9dcf4a97e6e3270a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variantc5ecf67cd5fff76d880d29b63dcd0a201469887cf91a106bb9f150eb7db0d46c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17aff653-34a2-3f20-d854-e4eff7b40dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ofCoalgHom (f : A →ₗc[R] B) (g : B →ₗc[R] A) (h₁ h₂) :
    ofCoalgHom f g h₁ h₂ = f :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variantc5ecf67cd5fff76d880d29b63dcd0a201469887cf91a106bb9f150eb7db0d46c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variantc5ecf67cd5fff76d880d29b63dcd0a201469887cf91a106bb9f150eb7db0d46c.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de4d86e2ac255c117bdb11d25eada9edcf0002e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
