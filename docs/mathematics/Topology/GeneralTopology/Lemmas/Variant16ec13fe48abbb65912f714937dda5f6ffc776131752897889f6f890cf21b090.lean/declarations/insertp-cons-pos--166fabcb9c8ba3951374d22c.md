# insertP_cons_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f36b743-c5de-69ce-7e80-a80f5ba319da",
  "kind": "theorem",
  "lexical_name": "insertP_cons_pos",
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
  "slug": "insertp-cons-pos--166fabcb9c8ba3951374d22c",
  "source": {
    "blob": "cac2fa5d804016e25f6084d0a442c77d3156de84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1052,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:166fabcb9c8ba3951374d22c62dab360d598deb2ba44b605d11c46e8f78879f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f36b743-c5de-69ce-7e80-a80f5ba319da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1052–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem insertP_cons_pos (p : α → Bool) (a b l) (h : p b) :
    insertP p a (b :: l) = a :: b :: l := by
  simp only [insertP, insertP.loop, cond, h]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean#L1052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cac2fa5d804016e25f6084d0a442c77d3156de84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
