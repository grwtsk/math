# coeAddMonoidHom_eq_dfinsuppSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e0e2fd4-6c6e-4a11-024b-b5ab08e1b866",
  "kind": "theorem",
  "lexical_name": "coeAddMonoidHom_eq_dfinsuppSum",
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
  "slug": "coeaddmonoidhom-eq-dfinsuppsum--ed06c5393b0f5805cdba70e4",
  "source": {
    "blob": "2f034753b9785be15a3250cc0298816fa447cafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant504bc142663339402fc9c04662bc930e58cb89e495bcabad6a9bf10703ad4a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed06c5393b0f5805cdba70e498c728325f4ab4d7240b917c493a1282a9140665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant504bc142663339402fc9c04662bc930e58cb89e495bcabad6a9bf10703ad4a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e0e2fd4-6c6e-4a11-024b-b5ab08e1b866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeAddMonoidHom_eq_dfinsuppSum [DecidableEq ι]
    {M S : Type*} [DecidableEq M] [AddCommMonoid M]
    [SetLike S M] [AddSubmonoidClass S M] (A : ι → S) (x : DirectSum ι fun i => A i) :
    DirectSum.coeAddMonoidHom A x = DFinsupp.sum x fun i => (fun x : A i => ↑x) := by
  simp only [DirectSum.coeAddMonoidHom, toAddMonoid, DFinsupp.liftAddHom, AddEquiv.coe_mk]
  exact DFinsupp.sumAddHom_apply _ x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant504bc142663339402fc9c04662bc930e58cb89e495bcabad6a9bf10703ad4a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant504bc142663339402fc9c04662bc930e58cb89e495bcabad6a9bf10703ad4a37.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f034753b9785be15a3250cc0298816fa447cafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
