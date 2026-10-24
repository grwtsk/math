# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:038677d59ee7bb29858eab7e8a0576ad160f63cb745c6edbcd5d5cbcb7a05783",
  "kind": "macro_rules",
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
  "slug": "macro-rules--83eaac160f023ebdc9f718cd",
  "source": {
    "blob": "d13a0c7a8798749ab16dde44e9b71e10da82a60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83eaac160f023ebdc9f718cdf356eff92c8e19b1d2e6359ff4c35aa95395cedf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:038677d59ee7bb29858eab7e8a0576ad160f63cb745c6edbcd5d5cbcb7a05783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
| `(tactic| group $[$loc]?) =>
  `(tactic| repeat (fail_if_no_progress (aux_group₁ $[$loc]? <;> aux_group₂ $[$loc]?)))

end Mathlib.Tactic.Group

/-!
We register `group` with the `hint` tactic.
-/

register_hint group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13a0c7a8798749ab16dde44e9b71e10da82a60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
