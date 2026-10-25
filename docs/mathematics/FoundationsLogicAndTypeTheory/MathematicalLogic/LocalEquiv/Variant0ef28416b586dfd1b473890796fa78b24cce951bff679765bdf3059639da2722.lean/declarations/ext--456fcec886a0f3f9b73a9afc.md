# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ef4ee21-295c-5c47-10ae-1f9675416bb4",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--456fcec886a0f3f9b73a9afc",
  "source": {
    "blob": "0442a0874ccf8355f51208b67ad3cd6e0fb94ec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 555,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:456fcec886a0f3f9b73a9afcefb2163390ed24538b9cc54226aba378af29bc14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ef4ee21-295c-5c47-10ae-1f9675416bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ext {e e' : LocalEquiv α β} (h : ∀ x, e x = e' x)
    (hsymm : ∀ x, e.symm x = e'.symm x) (hs : e.source = e'.source) : e = e' := by
  have A : (e : α → β) = e' := by
    ext x
    exact h x
  have B : (e.symm : β → α) = e'.symm := by
    ext x
    exact hsymm x
  have I : e '' e.source = e.target := e.image_source_eq_target
  have I' : e' '' e'.source = e'.target := e'.image_source_eq_target
  rw [A, hs, I'] at I
  cases e; cases e'
  simp [*] at *
  simp [*]
#align local_equiv.ext LocalEquiv.ext

/-- Restricting a local equivalence to e.source ∩ s -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant0ef28416b586dfd1b473890796fa78b24cce951bff679765bdf3059639da2722.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0442a0874ccf8355f51208b67ad3cd6e0fb94ec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
