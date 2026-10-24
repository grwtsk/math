# pow_f_le_f_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7f0f813-ac41-3039-8d01-c4709af5020a",
  "kind": "theorem",
  "lexical_name": "pow_f_le_f_pow",
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
  "slug": "pow-f-le-f-pow--a28dee6b177d87d8b61d471a",
  "source": {
    "blob": "2b889bda1cf5235223400629f6fcc6f5646c0a51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28dee6b177d87d8b61d471a27585bb279abf460139595081e779cc1706e527e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f0f813-ac41-3039-8d01-c4709af5020a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_f_le_f_pow {f : ℚ → ℝ} {n : ℕ} (hn : 0 < n) {x : ℚ} (hx : 1 < x)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n) :
    f (x ^ n) ≤ f x ^ n := by
  induction' n with pn hpn
  · exfalso; exact Nat.lt_asymm hn hn
  rcases pn with - | pn
  · norm_num
  have hpn' := hpn pn.succ_pos
  rw [pow_succ x (pn + 1), pow_succ (f x) (pn + 1)]
  have hxp : 0 < x := by positivity
  calc
    f (x ^ (pn + 1) * x) ≤ f (x ^ (pn + 1)) * f x := H1 (x ^ (pn + 1)) x (pow_pos hxp (pn + 1)) hxp
    _ ≤ f x ^ (pn + 1) * f x := by gcongr; exact (f_pos_of_pos hxp H1 H4).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b889bda1cf5235223400629f6fcc6f5646c0a51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
