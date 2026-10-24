# old_mul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c63beddb-860e-107c-f0ef-5b74e180e560",
  "kind": "theorem",
  "lexical_name": "old_mul_comm",
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
  "slug": "old-mul-comm--79f278ef6ec4a5fee48052f1",
  "source": {
    "blob": "6a2256143ce84337c4916271e2fb9f9a423a59b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 998,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f278ef6ec4a5fee48052f1e9d11165c0de76f330644650f62c85b864a3aebf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63beddb-860e-107c-f0ef-5b74e180e560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 998–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem old_mul_comm {α} [CommMagma α] (a b : α) : a * b = b * a := mul_comm a b

/--
warning: `old_mul_comm` has been deprecated: Use `mul_comm` instead
---
info: @old_mul_comm : ∀ {α : Type u_1} [inst : CommMagma α] (a b : α), a * b = b * a
-/
#guard_msgs in
#check @old_mul_comm

/--
warning: `old_add_comm` has been deprecated: Use `add_comm` instead
---
info: @old_add_comm : ∀ {α : Type u_1} [inst : AddCommMagma α] (a b : α), a + b = b + a
-/
#guard_msgs in
#check @old_add_comm

@[to_additive (attr := deprecated (since := "today"))]
alias mul_comm_alias := mul_comm

/--
warning: `mul_comm_alias` has been deprecated: Use `mul_comm` instead
---
info: @mul_comm_alias : ∀ {G : Type u_1} [inst : CommMagma G] (a b : G), a * b = b * a
-/
#guard_msgs in
#check @mul_comm_alias

/--
warning: `add_comm_alias` has been deprecated: Use `add_comm` instead
---
info: @add_comm_alias : ∀ {G : Type u_1} [inst : AddCommMagma G] (a b : G), a + b = b + a
-/
#guard_msgs in
#check @add_comm_alias

/-! Warning when adding docstrings to existing declarations -/

namespace ExistingDeclDocstring

/-- Existing docstring -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean#L998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a2256143ce84337c4916271e2fb9f9a423a59b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
