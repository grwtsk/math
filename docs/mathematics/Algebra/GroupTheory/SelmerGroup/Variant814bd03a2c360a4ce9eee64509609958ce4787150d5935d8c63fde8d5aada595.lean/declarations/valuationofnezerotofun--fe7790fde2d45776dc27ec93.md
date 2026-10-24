# valuationOfNeZeroToFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14daf45fbad6565e7eb1044f24409f142ff226a1f4f5de12b49759f2970277a5",
  "kind": "def",
  "lexical_name": "valuationOfNeZeroToFun",
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
  "slug": "valuationofnezerotofun--fe7790fde2d45776dc27ec93",
  "source": {
    "blob": "27ac06be850384a397a483d581bf0163a7668bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7790fde2d45776dc27ec93f26338c0c4b5cd38b3047e5934c1fb27401f686b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14daf45fbad6565e7eb1044f24409f142ff226a1f4f5de12b49759f2970277a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def valuationOfNeZeroToFun (x : Kˣ) : Multiplicative ℤ :=
  let hx := IsLocalization.sec R⁰ (x : K)
  Multiplicative.ofAdd <|
    (-(Associates.mk v.asIdeal).count (Associates.mk <| Ideal.span {hx.fst}).factors : ℤ) -
      (-(Associates.mk v.asIdeal).count (Associates.mk <| Ideal.span {(hx.snd : R)}).factors : ℤ)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ac06be850384a397a483d581bf0163a7668bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
