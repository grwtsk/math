# recoverLift_convertA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73497fff-7373-9f51-3d7e-8df8f0b3bd1e",
  "kind": "theorem",
  "lexical_name": "recoverLift_convertA",
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
  "slug": "recoverlift-converta--0ee92253bf970730f5242651",
  "source": {
    "blob": "cccb4039dc0f871b97a118e81bc5316902aebfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee92253bf970730f5242651df0e423ee7203ca151fb328e3b5e847b82b9a31a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73497fff-7373-9f51-3d7e-8df8f0b3bd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recoverLift_convertA (L : LogicCode S) (KY KP : QuantifierCode S)
    {A B : Expr S} (i w : Expr S) (h : Converts A B) :
    Converts (R.recoverLift L KY KP A i w) (R.recoverLift L KY KP B i w) := by
  let body := (R.rename Nat.succ).recoverLift (L.rename Nat.succ) (KY.rename Nat.succ)
    (KP.rename Nat.succ) (.var 0) (i.rename Nat.succ) (w.rename Nat.succ)
  have hh := h.instantiate_right body
  simpa only [body,Expr.instantiate,recoverLift_subst,instantiate_raise,
    LogicCode.instantiate_raise,QuantifierCode.instantiate_raise,Expr.subst_lift_single,
      Expr.subst,Expr.single] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccb4039dc0f871b97a118e81bc5316902aebfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
