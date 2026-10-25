# withBotDegree_le_withBotDegree_of_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8046f007-9379-ac83-3a4c-b2f49996d193",
  "kind": "lemma",
  "lexical_name": "withBotDegree_le_withBotDegree_of_support_subset",
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
  "slug": "withbotdegree-le-withbotdegree-of-support-subset--65b8b714bc7ae349ce5fa5f8",
  "source": {
    "blob": "df090d867b53dc960d01df2e219e5e17380e2421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1178,
    "line": 1138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65b8b714bc7ae349ce5fa5f8d05df2cd8060519458da3c6a9996f825e6234056",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8046f007-9379-ac83-3a4c-b2f49996d193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1138–1178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withBotDegree_le_withBotDegree_of_support_subset
    (h : f.support ⊆ g.support) :
    m.withBotDegree f ≼'[m] m.withBotDegree g := by
  by_cases hg : g = 0
  · simpa [hg] using h
  rw [m.withBotDegree_le_withBotDegree_iff_of_ne_zero _ hg]
  exact m.degree_le_degree_of_support_subset h

end withBotDegree

end Semiring

section Ring

variable {R : Type*} [CommRing R]

variable (m) in
/-- The S-polynomial of two polynomials.

Denoting

- the leading monomial of polynomial $f$ and $g$ as $lm(f)$ and $lm(g)$,
- the leading coefficient of $f$ and $g$ as $lc(f)$ and $lc(g)$
  (formalized as `m.leadingCoeff f` and `m.leadingCoeff g`), and
- the least common multiple of $lm(f)$ and $lm(g)$ as $lcm(lm(f),lm(g))$,

the S-polynomial of $f$ and $g$ is defined as
$$sPoly(f,g) := (lcm(lm(f),lm(g)) / lm(f)) * lc(g) * f - (lcm(lm(f),lm(g)) / lm(g)) * lc(f) * g.$$

$(lcm(lm(f),lm(g)) / lm(f))$ and $lcm(lm(f),lm(g)) / lm(g)$ is formalized as
`monomial (m.degree g - m.degree f) 1` and `monomial (m.degree g - m.degree f) 1`, while there is
also another more direct formalization in `sPolynomial_def`.

Notice that, when the polynomial ring is over a field, S-polynomial is usually defined as
$$sPoly'(f,g) :=
  (lcm(lm(f),lm(g)) / (lm(f) * lc(f))) * f - (lcm(lm(f),lm(g)) / (lm(g) * lc(g))) * g,$$
while we avoid inverting $lc(f)$ and $lc(g)$ in this formalization so that it doesn't require a
field or units (`IsUnit`) over ring.

An equality between these two versions holds: $$sPoly(f,g) = lc(f) * lc(g) * sPoly'(f,g).$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean#L1138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df090d867b53dc960d01df2e219e5e17380e2421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
