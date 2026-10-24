# instAddMonoidWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e8502c6b3262f1a88135a008864fc4c1daafff2b8c24a6793e769cfd84b1bd4",
  "kind": "def",
  "lexical_name": "instAddMonoidWithOne",
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
  "slug": "instaddmonoidwithone--ae941d6b2ce50d45826a9da1",
  "source": {
    "blob": "4a91a6baca9a7f54db0a38a5ef4d438baf70e259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae941d6b2ce50d45826a9da1bd0f8dcea941227a6b100b99cbbe712db5fa81e8",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e8502c6b3262f1a88135a008864fc4c1daafff2b8c24a6793e769cfd84b1bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instAddMonoidWithOne (n) [NeZero n] : AddMonoidWithOne (Fin n) where
  __ := (inferInstance : AddCommMonoid (Fin n))
  natCast i := Fin.ofNat n i
  natCast_zero := rfl
  natCast_succ _ := Fin.ext (add_mod _ _ _)

namespace NatCast

attribute [scoped instance] Fin.instAddMonoidWithOne

end NatCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9c75a7c8e94137f9edb680e86856e62f2cb3a4386bb1b26eb5176e607aec7aca.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a91a6baca9a7f54db0a38a5ef4d438baf70e259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
