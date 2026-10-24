# tsum_even_add_odd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb1bdacb-29a8-c4ee-5f2a-5513afd6cfe9",
  "kind": "theorem",
  "lexical_name": "tsum_even_add_odd'",
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
  "slug": "tsum-even-add-odd--b4ae5eb37b43c6e0a055d5c4",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2153,
    "line": 2109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ae5eb37b43c6e0a055d5c495cccde361915842a1b26d06e0af738cabfed68a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb1bdacb-29a8-c4ee-5f2a-5513afd6cfe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2109–2153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_even_add_odd' {M : Type*} [AddCommMonoid M] [TopologicalSpace M]
    [T2Space M] [ContinuousAdd M] {f : ℕ+ → M}
    (he : Summable fun (k : ℕ+) ↦ f (2 * k))
    (ho : Summable fun (k : ℕ+) ↦ f (2 * k - 1)) :
    ∑' (k : ℕ+), f (2 * k - 1) + ∑' (k : ℕ+), f (2 * k) = ∑' (k : ℕ+), f k := by
  symm
  rw [← Equiv.tsum_eq (Equiv.pnatEquivNat.symm), ← tsum_even_add_odd,
    ← Equiv.tsum_eq (Equiv.pnatEquivNat.symm), ← Equiv.tsum_eq (Equiv.pnatEquivNat.symm)]
  · congr
  · simpa [← Equiv.summable_iff (Equiv.pnatEquivNat.symm)] using ho
  · simpa [← Equiv.summable_iff (Equiv.pnatEquivNat.symm)] using he

blueprint_comment /--
We could prove these equations starting from Euler's product for $\sin \pi z$.
-/

@[blueprint
  "lem:abadeulmit1"
  (title := "Euler/Mittag-Leffler expansion for cosec")
  (statement := /--
Let $z\in \mathbb{C}$, $z\notin \mathbb{Z}$. Then
\[\frac{\pi}{\sin \pi z} = \frac{1}{z} +
 \sum_{n > 0} (-1)^n\left(\frac{1}{z - n} + \frac{1}{z + n}\right).
\]
-/)
  (proof := /--
Let us start from the Mittag-Leffler expansion
$\pi \cot \pi s = \frac{1}{s} + \sum_n \left(\frac{1}{s-n} + \frac{1}{s+n}\right)$.

Applying the trigonometric identity
$\cot u - \cot \left(u + \frac{\pi}{2}\right) = \cot u + \tan u = \frac{2}{\sin 2 u}$
with $u=\pi z/2$, and letting $s = z/2$, $s = (z+1)/2$, we see that
\[\begin{aligned}\frac{\pi}{\sin \pi z}
  &= \frac{\pi}{2} \cot \frac{\pi z}{2} - \frac{\pi}{2} \cot \frac{\pi (z+1)}{2} \\
  &= \frac{1/2}{z/2} +
    \sum_n \left(\frac{1/2}{\frac{z}{2} -n} + \frac{1/2}{\frac{z}{2} +n}\right)
    -\frac{1/2}{(z+1)/2}
    - \sum_n \left(\frac{1/2}{\frac{z+1}{2} -n} + \frac{1/2}{\frac{z+1}{2} +n}\right)\\
  &= \frac{1}{z} + \sum_n \left(\frac{1}{z - 2 n} + \frac{1}{z + 2 n}\right) -
    \sum_n \left(\frac{1}{z - (2 n - 1)} + \frac{1}{z + (2 n - 1)}\right)
\end{aligned}\]
after reindexing the second sum. Regrouping terms again, we obtain our equation.
-/)
  (latexEnv := "lemma")
  (discussion := 569)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L2109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
