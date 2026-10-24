# ιFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:719121c8d1fe9956e001550a716e3ab7e6d0c4f6d2bca713f05918362cad17d6",
  "kind": "def",
  "lexical_name": "ιFun",
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
  "slug": "fun--cdb90ce985b15366fd2f5c5e",
  "source": {
    "blob": "a7ae75d9d20239e8a93e99ff5473e38fa61b2280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdb90ce985b15366fd2f5c5eab9b0fdd7a9e3bed68fe965bec28b9d5dce330f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:719121c8d1fe9956e001550a716e3ab7e6d0c4f6d2bca713f05918362cad17d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ιFun : Quotient (relation π) → B :=
  Quotient.lift (fun ⟨a,x⟩ => π a x) <| by
    rintro ⟨a,x⟩ ⟨b,y⟩ ⟨Z,z,fst,snd,h,hx,hy⟩
    dsimp at *
    rw [← hx, ← hy]
    apply_fun (fun t => t z) at h
    exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ae75d9d20239e8a93e99ff5473e38fa61b2280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
