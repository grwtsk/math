# multiplicative_of_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e9921a6-32a7-c48b-e228-79f0fc0c23ad",
  "kind": "theorem",
  "lexical_name": "multiplicative_of_total",
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
  "slug": "multiplicative-of-total--32b47891838fd2b203437207",
  "source": {
    "blob": "af70b4587bd2828aa92be06fda3f1929a3a62285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1060,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1d85d48784eeb3624976243f2570f89f22821064e9b0aac5f9a8f6cc19595540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b47891838fd2b203437207b808f6674cb29fc2afd87488242acaa5bba45997",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1d85d48784eeb3624976243f2570f89f22821064e9b0aac5f9a8f6cc19595540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9921a6-32a7-c48b-e228-79f0fc0c23ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicative_of_total (p : α → Prop) (hswap : ∀ {a b}, p a → p b → f a b * f b a = 1)
    (hmul : ∀ {a b c}, r a b → r b c → p a → p b → p c → f a c = f a b * f b c) {a b c : α}
    (pa : p a) (pb : p b) (pc : p c) : f a c = f a b * f b c := by
  have : Std.Symm (p · ∧ p ·) := { symm _ _ := And.symm }
  apply multiplicative_of_symm_of_total (p · ∧ p ·) r f
  · simp_rw [and_imp]; exact @hswap
  · exact fun rab rbc pab _pbc pac => hmul rab rbc pab.1 pab.2 pac.2
  exacts [⟨pa, pb⟩, ⟨pb, pc⟩, ⟨pa, pc⟩]

end multiplicative

/-- An auxiliary lemma that can be used to prove `⇑(f ^ n) = ⇑f^[n]`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1d85d48784eeb3624976243f2570f89f22821064e9b0aac5f9a8f6cc19595540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1d85d48784eeb3624976243f2570f89f22821064e9b0aac5f9a8f6cc19595540.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af70b4587bd2828aa92be06fda3f1929a3a62285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
