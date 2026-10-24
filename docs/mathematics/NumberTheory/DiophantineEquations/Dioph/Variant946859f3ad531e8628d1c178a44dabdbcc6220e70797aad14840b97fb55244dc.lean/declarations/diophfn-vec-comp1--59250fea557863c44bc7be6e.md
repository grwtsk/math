# diophFn_vec_comp1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:672423c4-216b-3be1-88c9-7f4edb85da93",
  "kind": "theorem",
  "lexical_name": "diophFn_vec_comp1",
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
  "slug": "diophfn-vec-comp1--59250fea557863c44bc7be6e",
  "source": {
    "blob": "4b34c2e2932e388df7b4717a063c3a344dd54ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 430,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59250fea557863c44bc7be6eaa4c0c15aac3fa0e1abf7b060926780cbc58a8a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672423c4-216b-3be1-88c9-7f4edb85da93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophFn_vec_comp1 {S : Set (Vector3 ℕ (succ n))} (d : Dioph S) {f : Vector3 ℕ n → ℕ}
    (df : DiophFn f) : Dioph {v : Vector3 ℕ n | (f v :: v) ∈ S} :=
  Dioph.ext (diophFn_comp1 (reindex_dioph _ (none :: some) d) df) (fun v => by
    dsimp
    -- TODO: `apply iff_of_eq` is required here, even though `congr!` works on iff below.
    apply iff_of_eq
    congr 1
    ext x; cases x <;> rfl)

set_option backward.isDefEq.respectTransparency false in
/-- Deleting the first component preserves the Diophantine property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b34c2e2932e388df7b4717a063c3a344dd54ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
