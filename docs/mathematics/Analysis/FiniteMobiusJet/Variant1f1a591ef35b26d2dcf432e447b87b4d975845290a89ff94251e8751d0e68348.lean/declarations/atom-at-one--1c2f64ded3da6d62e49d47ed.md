# atom_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bf3a6af-88c0-7f7c-99f3-abd4847bda80",
  "kind": "theorem",
  "lexical_name": "atom_at_one",
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
  "slug": "atom-at-one--1c2f64ded3da6d62e49d47ed",
  "source": {
    "blob": "e3ff04d28de626aad9504025c07a2a89b3d6b700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2f64ded3da6d62e49d47edfe27a08092affaea3e5078dca04e5dd3fb7c1226",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf3a6af-88c0-7f7c-99f3-abd4847bda80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_at_one {n : ℕ} (hn : 1 ≤ n) :
    dirichletAtom n 1 = 1 / (n : ℂ) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  unfold dirichletAtom
  simp only [neg_mul, one_mul, ← Complex.ofReal_neg, ← Complex.ofReal_exp,
    Real.exp_neg, Real.exp_log hnR, Complex.ofReal_inv, Complex.ofReal_natCast,
    one_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ff04d28de626aad9504025c07a2a89b3d6b700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
