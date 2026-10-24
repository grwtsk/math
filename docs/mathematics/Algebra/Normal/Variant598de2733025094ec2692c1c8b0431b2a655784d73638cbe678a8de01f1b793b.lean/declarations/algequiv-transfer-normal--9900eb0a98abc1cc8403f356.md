# AlgEquiv.transfer_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:263e8a0f-30d7-8710-0108-83ab2a1b1f18",
  "kind": "theorem",
  "lexical_name": "AlgEquiv.transfer_normal",
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
  "slug": "algequiv-transfer-normal--9900eb0a98abc1cc8403f356",
  "source": {
    "blob": "d04a469364b8ad152f56d6f0a411df3dad30eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9900eb0a98abc1cc8403f356c2c74db977b8a058d89516ccd7ca2911f0429d62",
  "verification": {
    "reference": "docs/verification/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:263e8a0f-30d7-8710-0108-83ab2a1b1f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgEquiv.transfer_normal (f : E ≃ₐ[F] E') : Normal F E ↔ Normal F E' :=
  ⟨fun _ => Normal.of_algEquiv f, fun _ => Normal.of_algEquiv f.symm⟩
#align alg_equiv.transfer_normal AlgEquiv.transfer_normal

-- seems to be causing a diamond in the below proof
-- however, this may be a fluke and the proof below uses non-canonical `Algebra` instances:
-- when I replaced all the instances inside the proof with the "canonical" instances we have,
-- I had the (unprovable) goal (of the form) `AdjoinRoot.mk f (C x) = AdjoinRoot.mk f X`
-- for some `x, f`. So maybe this is indeed the correct approach and rewriting this proof is
-- salient in the future, or at least taking a closer look at the algebra instances it uses.
attribute [-instance] AdjoinRoot.instSMulAdjoinRoot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d04a469364b8ad152f56d6f0a411df3dad30eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
