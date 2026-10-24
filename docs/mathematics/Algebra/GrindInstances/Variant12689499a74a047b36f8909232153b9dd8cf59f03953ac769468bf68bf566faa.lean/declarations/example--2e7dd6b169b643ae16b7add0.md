# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c3230cd0f1325bf7b9f17291a0c789da55505f4840710e4cf632da04017b8cf",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2e7dd6b169b643ae16b7add0",
  "source": {
    "blob": "6925363a825f95f1b8ed96619daff500fcfa8525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e7dd6b169b643ae16b7add06cda03ce66835a25b328db99745f553e1ef569aa",
  "verification": {
    "reference": "docs/verification/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c3230cd0f1325bf7b9f17291a0c789da55505f4840710e4cf632da04017b8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (s : Grind.CommRing α) : CommRing α :=
  { s with
    zero_add := Grind.CommRing.zero_add
    right_distrib := Grind.CommRing.right_distrib
    mul_zero := Grind.CommRing.mul_zero
    one_mul := Grind.CommRing.one_mul
    nsmul := nsmulRec
    zsmul := zsmulRec
    natCast := Nat.cast
    natCast_zero :=  Grind.CommRing.natCast_zero
    natCast_succ n := Grind.CommRing.natCast_succ n
    intCast := Int.cast
    intCast_ofNat := Grind.CommRing.intCast_natCast
    intCast_negSucc n := by
      rw [Int.negSucc_eq, Grind.CommRing.intCast_neg,
        Grind.CommRing.intCast_natCast_add_one, Grind.CommRing.natCast_succ] }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6925363a825f95f1b8ed96619daff500fcfa8525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
