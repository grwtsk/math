# AddSubmonoidClass.nSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:027d726e986c0ae3c304e4c2f8d829ade243c0fa1fbe6d778d227ed2da3ecdbf",
  "kind": "instance",
  "lexical_name": "AddSubmonoidClass.nSMul",
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
  "slug": "addsubmonoidclass-nsmul--a6e68f174dcbd74b6d1b0207",
  "source": {
    "blob": "889f97dea8be98bfb53d0ed2a7ec849bada3d1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 555,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6e68f174dcbd74b6d1b02078bd7c2249d9a93c5cb57bfcfd3dcc21f79d80895",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:027d726e986c0ae3c304e4c2f8d829ade243c0fa1fbe6d778d227ed2da3ecdbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AddSubmonoidClass.nSMul {M} [AddMonoid M] {A : Type*} [SetLike A M]
    [AddSubmonoidClass A M] (S : A) : SMul ℕ S :=
  ⟨fun n a => ⟨n • a.1, nsmul_mem a.2 n⟩⟩
#align add_submonoid_class.has_nsmul AddSubmonoidClass.nSMul

namespace SubmonoidClass

/-- A submonoid of a monoid inherits a power operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889f97dea8be98bfb53d0ed2a7ec849bada3d1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
