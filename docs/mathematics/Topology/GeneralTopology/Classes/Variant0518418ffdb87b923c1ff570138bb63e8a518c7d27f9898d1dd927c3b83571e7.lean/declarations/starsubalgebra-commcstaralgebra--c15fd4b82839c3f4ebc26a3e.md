# StarSubalgebra.commCStarAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c3b1827d21e726a2b9f1f1212fc661dd8c7afc3525a90784474eb7745ab01ee",
  "kind": "instance",
  "lexical_name": "StarSubalgebra.commCStarAlgebra",
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
  "slug": "starsubalgebra-commcstaralgebra--c15fd4b82839c3f4ebc26a3e",
  "source": {
    "blob": "b842079ae9aa2747506332d1b6be775898c35902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c15fd4b82839c3f4ebc26a3e2c1d3aa71655e4c33117026781bc93fd0c8f0a78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c3b1827d21e726a2b9f1f1212fc661dd8c7afc3525a90784474eb7745ab01ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance StarSubalgebra.commCStarAlgebra {S A : Type*} [CommCStarAlgebra A]
    [SetLike S A] [SubringClass S A] [SMulMemClass S ℂ A] [StarMemClass S A]
    (s : S) [h_closed : IsClosed (s : Set A)] : CommCStarAlgebra s where
  toCompleteSpace := h_closed.completeSpace_coe
  norm_mul_self_le x := CStarRing.norm_star_mul_self (x := (x : A)) |>.symm.le
  mul_comm _ _ := Subtype.ext <| mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b842079ae9aa2747506332d1b6be775898c35902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
