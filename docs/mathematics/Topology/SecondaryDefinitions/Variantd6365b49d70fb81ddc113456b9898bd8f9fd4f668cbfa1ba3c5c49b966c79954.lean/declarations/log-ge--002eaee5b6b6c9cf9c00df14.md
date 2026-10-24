# log_ge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:328d5a72-ca88-94e0-eda9-144377bc129d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34a8b062-333c-96ec-820e-25da449d4145",
  "kind": "theorem",
  "lexical_name": "log_ge'",
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
  "slug": "log-ge--002eaee5b6b6c9cf9c00df14",
  "source": {
    "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 79,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:002eaee5b6b6c9cf9c00df1409677b5e56ecc4f6f2de6e032fef0c5428525328",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34a8b062-333c-96ec-820e-25da449d4145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ge' {t t₀ : ℝ} (ht : 0 ≤ t) (ht0 : t ≤ t₀) (ht0' : t₀ < 1) :
    (t / t₀) * log (1 - t₀) ≤ log (1 - t) := by
  rcases ht.eq_or_lt with rfl | ht
  · simp
  rcases ht0.eq_or_lt with rfl | ht0
  · field_simp [ht.ne]
    rfl
  have := strictConcaveOn_log_Ioi.2 (y := 1) (x := 1 - t₀) (by grind) (by grind) (by linarith)
  simp only [smul_eq_mul, log_one, mul_zero, add_zero, mul_one] at this
  convert this (a := t / t₀) (b := 1 - t / t₀) (by bound) (by bound) (by ring) |>.le using 2
  field [show t₀ ≠ 0 by linarith]

@[blueprint
  "symm_inv_log"
  (title := "Symmetrization of inverse log")
  (statement := /--
    For $0 < t \leq 1/2$, one has
    $| \frac{1}{\log(1+t)} + \frac{1}{\log(1-t)}|
    \leq \frac{16\log(4/3)}{3}$. -/)
  (proof := /--
    The expression can be written as
    $\frac{|\log(1-t^2)|}{|\log(1-t)| |\log(1+t)|}$.
    Now use the previous upper and lower bounds,
    noting that $t^2 \leq 1/4$.
    NOTE: this gives the slightly weaker bound of
    $16 \log(4/3) / 3$, but this can suffice for
    applications. The sharp bound would require showing
    that the left-hand side is monotone in $t$, which
    looks true but not so easy to verify. -/)
  (latexEnv := "sublemma")
  (discussion := 767)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de27f41e12c834060ee8723d6924d6402f6ec2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
