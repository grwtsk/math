# DecidableLE4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0bf1bd60404a5a3c83aa56ab93845c5f8e84a24395186d16c4d96d5e601db7a",
  "kind": "def",
  "lexical_name": "DecidableLE4",
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
  "slug": "decidablele4--128af15895d0992fcfc763ad",
  "source": {
    "blob": "db82bbba50c3c8f95902978ff8fd377bbae6afcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:128af15895d0992fcfc763ad4e99ad539807c8b309dc54abedf6455f044e2cf7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0bf1bd60404a5a3c83aa56ab93845c5f8e84a24395186d16c4d96d5e601db7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DecidableLE4 (h : DecidableLE α) (a b : α) : Decidable (a ≤ b) := h a b

-- The arguments to `h` have been introduced, and swapped:
/--
info: fun {α} [PartialOrder α] h a b => h b a
---
info: fun {α} [PartialOrder α] h => id fun a b => h b a
---
info: fun {α} [PartialOrder α] h a b => h b a
-/
#guard_msgs in
open Lean in
run_meta
  logInfo m!"{(← getConstInfo ``DecidableLE1_dual).value!}"
  logInfo m!"{(← getConstInfo ``DecidableLE2_dual).value!}"
  logInfo m!"{(← getConstInfo ``DecidableLE4_dual).value!}"

-- The arguments to `inst✝` have been swapped:
/--
info: @dite (a < b ⊕' a = b) (b ≤ a) (inst✝ b a) (fun hba => PSum.inr ⋯) fun hba => PSum.inl ⋯
---
info: @dite (b < a ⊕' a = b) (a ≤ b) (inst✝ a b) (fun hba => PSum.inr ⋯) fun hba => PSum.inl ⋯
-/
#guard_msgs in
open Lean Meta in
run_meta
  lambdaTelescope (← getConstInfo ``lt_sum_eq_of_le).value! fun _ => (logInfo m!"{·.setPPExplicit true}")
  lambdaTelescope (← getConstInfo ``lt_sum_eq_of_le').value! fun _ => (logInfo m!"{·.setPPExplicit true}")

/-- `Ico a b` is the left-closed right-open interval $[a, b)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db82bbba50c3c8f95902978ff8fd377bbae6afcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
