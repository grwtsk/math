# taylorComp_sub_taylorComp_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b03a158-a36f-28a0-82a0-a805f6083ca3",
  "kind": "theorem",
  "lexical_name": "taylorComp_sub_taylorComp_isLittleO",
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
  "slug": "taylorcomp-sub-taylorcomp-islittleo--2f1aaa623e0fef2964c80a2b",
  "source": {
    "blob": "c8c28377120d3ec14b65b3626ccc62a2a7736aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 968,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1aaa623e0fef2964c80a2b0b187e572fcd760afc17710b39edf18b674519c2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b03a158-a36f-28a0-82a0-a805f6083ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 968–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylorComp_sub_taylorComp_isLittleO
    {α H : Type*} [NormedAddCommGroup H] {l : Filter α} {p₁ p₂ : α → FormalMultilinearSeries 𝕜 F G}
    {q₁ q₂ : α → FormalMultilinearSeries 𝕜 E F} {f : α → H} {n : ℕ}
    (hp_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖p₁ · k‖))
    (hpf : ∀ k ≤ n, (fun a ↦ p₁ a k - p₂ a k) =o[l] f)
    (hq₁_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖q₁ · k‖))
    (hq₂_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖q₂ · k‖))
    (hqf : ∀ k ≤ n, (fun a ↦ q₁ a k - q₂ a k) =o[l] f) :
    (fun a ↦ (p₁ a).taylorComp (q₁ a) n - (p₂ a).taylorComp (q₂ a) n) =o[l] f := calc
  _ =O[l] fun a ↦ (fun k : Fin (n + 1) ↦ p₁ a k - p₂ a k,
                    fun k : Fin (n + 1) ↦ q₁ a k - q₂ a k) := by
    refine taylorComp_sub_taylorComp_isBigO hp_bdd ?_ hq₁_bdd hq₂_bdd ?_
    all_goals simp only [← Nat.lt_succ_iff, Nat.forall_lt_iff_fin, ← Asymptotics.isBigO_pi]
    exacts [Asymptotics.isBigO_fst_prod, Asymptotics.isBigO_snd_prod]
  _ =o[l] f :=
    .prod_left (Asymptotics.isLittleO_pi.2 fun k ↦ hpf k (by grind))
      (Asymptotics.isLittleO_pi.2 fun k ↦ hqf k (by grind))

end FormalMultilinearSeries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean#L968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c28377120d3ec14b65b3626ccc62a2a7736aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
