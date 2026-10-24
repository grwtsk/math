# inductionOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9374b31ed7c72690ea7475df383cd45a921965e28844e0c3518f7d4285af040e",
  "kind": "def",
  "lexical_name": "inductionOn'",
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
  "slug": "inductionon--81c6d322f61efc484d6576c2",
  "source": {
    "blob": "070f8fcd13997fb5c1833e7784067074741b2f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 661,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c6d322f61efc484d6576c262b11fd7033449c2173221aa1d3c5f909d0db7a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9374b31ed7c72690ea7475df383cd45a921965e28844e0c3518f7d4285af040e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inductionOn' (motive : RelSeries r → Sort*)
    (singleton : (x : α) → motive (RelSeries.singleton r x))
    (snoc : (p : RelSeries r) → (x : α) → (hx : p.last ~[r] x) → (hp : motive p) →
      motive (p.snoc x hx)) (p : RelSeries r) :
    motive p := by
  let {n : ℕ} (heq : p.length = n) : motive p := by
    induction n generalizing p with
    | zero =>
      convert! singleton p.head
      ext n
      · exact heq
      · simp [show n = 0 by lia, apply_zero]
    | succ d hd =>
      have ne0 : p.length ≠ 0 := by simp [heq]
      have len : p.eraseLast.length = d := by simp [heq]
      convert! snoc p.eraseLast p.last (p.eraseLast_last_rel_last ne0) (hd _ len)
      exact (p.snoc_self_eraseLast ne0).symm
  exact this rfl

/--
Given two series of the form `a₀ -r→ ... -r→ X` and `X -r→ b ---> ...`,
then `a₀ -r→ ... -r→ X -r→ b ...` is another series obtained by combining the given two.
-/
@[simps length]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `070f8fcd13997fb5c1833e7784067074741b2f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
