# imp_and_neg_imp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d1258dd-7845-bb81-e184-0dc0ba89ec92",
  "kind": "theorem",
  "lexical_name": "imp_and_neg_imp_iff",
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
  "slug": "imp-and-neg-imp-iff--cb827b51f9dcf2f1028eee86",
  "source": {
    "blob": "a2dcc6b5a597bf043e68548ec0dddb227a694b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Variant4e3bb021681d948c72dd3ab90d849e67999776dcabca4de55e8da14593474815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb827b51f9dcf2f1028eee8661b124ffb7e042891e9f3f5389f960c2a60fd4a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Variant4e3bb021681d948c72dd3ab90d849e67999776dcabca4de55e8da14593474815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1258dd-7845-bb81-e184-0dc0ba89ec92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem imp_and_neg_imp_iff (p : Prop) {q : Prop} : (p → q) ∧ (¬p → q) ↔ q :=
  Iff.intro (fun (a : _ ∧ _) => (Classical.em p).rec a.left a.right)
            (fun a => And.intro (fun _ => a) (fun _ => a))

end Classical

/- Export for Mathlib compat. -/
export Classical (imp_iff_right_iff imp_and_neg_imp_iff and_or_imp not_imp)

/-- Extract an element from an existential statement, using `Classical.choose`. -/
-- This enables projection notation.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Variant4e3bb021681d948c72dd3ab90d849e67999776dcabca4de55e8da14593474815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Variant4e3bb021681d948c72dd3ab90d849e67999776dcabca4de55e8da14593474815.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dcc6b5a597bf043e68548ec0dddb227a694b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
