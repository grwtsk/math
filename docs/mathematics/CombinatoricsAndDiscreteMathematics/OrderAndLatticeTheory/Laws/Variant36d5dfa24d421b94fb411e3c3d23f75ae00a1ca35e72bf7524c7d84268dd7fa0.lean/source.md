# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Laws.Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18211feb5123687caf1cb3da6bc56234f444e856` · SHA-256 `85f8fbff3f94389662ae33af64ad74e2c4d7675f94b9ba6d4575d0bc1048d89b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BotJoin.Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BotJoin.Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Algebra/Laws.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Algebra.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BotJoin.Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b

namespace Surface.Boolean.BooleanAlgebraCore

universe u

variable {B : Type u} [BooleanAlgebraCore B]

theorem bot_join (a : B) :
    join bot a = a := by
  rw [join_comm, join_bot]

theorem top_meet (a : B) :
    meet top a = a := by
  rw [meet_comm, meet_top]

theorem compl_join (a : B) :
    join (compl a) a = top := by
  rw [join_comm, join_compl]

theorem compl_meet (a : B) :
    meet (compl a) a = bot := by
  rw [meet_comm, meet_compl]

/-- Join idempotence: `a ∨ a = a`. -/
theorem join_idem (a : B) :
    join a a = a := by
  calc
    join a a = meet (join a a) top := (meet_top (join a a)).symm
    _ = meet (join a a) (join a (compl a)) := by
      rw [← join_compl a]
    _ = join a (meet a (compl a)) :=
      (join_meet_distrib a a (compl a)).symm
    _ = join a bot := by
      rw [meet_compl a]
    _ = a :=
      join_bot a

/-- Meet idempotence: `a ∧ a = a`. -/
theorem meet_idem (a : B) :
    meet a a = a := by
  calc
    meet a a = join (meet a a) bot := (join_bot (meet a a)).symm
    _ = join (meet a a) (meet a (compl a)) := by
      rw [← meet_compl a]
    _ = meet a (join a (compl a)) :=
      (meet_join_distrib a a (compl a)).symm
    _ = meet a top := by
      rw [join_compl a]
    _ = a :=
      meet_top a

/-- Join domination: `a ∨ 1 = 1`. -/
theorem join_top (a : B) :
    join a top = top := by
  calc
    join a top = join a (join a (compl a)) := by
      rw [← join_compl a]
    _ = join (join a a) (compl a) :=
      join_assoc a a (compl a)
    _ = join a (compl a) := by
      rw [join_idem a]
    _ = top :=
      join_compl a

theorem top_join (a : B) :
    join top a = top := by
  rw [join_comm, join_top]

/-- Meet domination: `a ∧ 0 = 0`. -/
theorem meet_bot (a : B) :
    meet a bot = bot := by
  calc
    meet a bot = meet a (meet a (compl a)) := by
      rw [← meet_compl a]
    _ = meet (meet a a) (compl a) :=
      meet_assoc a a (compl a)
    _ = meet a (compl a) := by
      rw [meet_idem a]
    _ = bot :=
      meet_compl a

theorem bot_meet (a : B) :
    meet bot a = bot := by
  rw [meet_comm, meet_bot]

/-- Join absorption: `a ∨ (a ∧ b) = a`. -/
theorem join_absorb (a b : B) :
    join a (meet a b) = a := by
  calc
    join a (meet a b) = join (meet a top) (meet a b) := by
      rw [meet_top a]
    _ = meet a (join top b) :=
      (meet_join_distrib a top b).symm
    _ = meet a top := by
      rw [top_join b]
    _ = a :=
      meet_top a

/-- Meet absorption: `a ∧ (a ∨ b) = a`. -/
theorem meet_absorb (a b : B) :
    meet a (join a b) = a := by
  calc
    meet a (join a b) = meet (join a bot) (join a b) := by
      rw [join_bot a]
    _ = join a (meet bot b) :=
      (join_meet_distrib a bot b).symm
    _ = join a bot := by
      rw [bot_meet b]
    _ = a :=
      join_bot a

theorem join_left_comm (a b c : B) :
    join a (join b c) = join b (join a c) := by
  calc
    join a (join b c) = join (join a b) c :=
      join_assoc a b c
    _ = join (join b a) c := by
      rw [join_comm a b]
    _ = join b (join a c) :=
      (join_assoc b a c).symm

theorem meet_left_comm (a b c : B) :
    meet a (meet b c) = meet b (meet a c) := by
  calc
    meet a (meet b c) = meet (meet a b) c :=
      meet_assoc a b c
    _ = meet (meet b a) c := by
      rw [meet_comm a b]
    _ = meet b (meet a c) :=
      (meet_assoc b a c).symm

/-- Complements are unique in a complemented distributive lattice. -/
theorem compl_unique (a b : B)
    (hJoin : join a b = top)
    (hMeet : meet a b = bot) :
    b = compl a := by
  have hb : b = meet b (compl a) := by
    calc
      b = meet b top := (meet_top b).symm
      _ = meet b (join a (compl a)) := by
        rw [← join_compl a]
      _ = join (meet b a) (meet b (compl a)) :=
        meet_join_distrib b a (compl a)
      _ = join bot (meet b (compl a)) := by
        rw [meet_comm b a, hMeet]
      _ = meet b (compl a) :=
        bot_join (meet b (compl a))
  have hc : compl a = meet b (compl a) := by
    calc
      compl a = meet top (compl a) := (top_meet (compl a)).symm
      _ = meet (join a b) (compl a) := by
        rw [← hJoin]
      _ = meet (compl a) (join a b) :=
        meet_comm (join a b) (compl a)
      _ = join (meet (compl a) a) (meet (compl a) b) :=
        meet_join_distrib (compl a) a b
      _ = join bot (meet (compl a) b) := by
        rw [compl_meet a]
      _ = meet (compl a) b :=
        bot_join (meet (compl a) b)
      _ = meet b (compl a) :=
        meet_comm (compl a) b
  exact hb.trans hc.symm

/-- Involution: `¬¬a = a`. -/
theorem compl_involutive (a : B) :
    compl (compl a) = a := by
  have h : a = compl (compl a) :=
    compl_unique (compl a) a (compl_join a) (compl_meet a)
  exact h.symm

/-- De Morgan for joins: `¬(a ∨ b) = ¬a ∧ ¬b`. -/
theorem compl_join_eq_meet_compl (a b : B) :
    compl (join a b) = meet (compl a) (compl b) := by
  symm
  apply compl_unique (join a b) (meet (compl a) (compl b))
  · have hLeft : join (join a b) (compl a) = top := by
      calc
        join (join a b) (compl a)
            = join a (join b (compl a)) :=
          (join_assoc a b (compl a)).symm
        _ = join a (join (compl a) b) := by
          rw [join_comm b (compl a)]
        _ = join (join a (compl a)) b :=
          join_assoc a (compl a) b
        _ = join top b := by
          rw [join_compl a]
        _ = top :=
          top_join b
    have hRight : join (join a b) (compl b) = top := by
      calc
        join (join a b) (compl b)
            = join a (join b (compl b)) :=
          (join_assoc a b (compl b)).symm
        _ = join a top := by
          rw [join_compl b]
        _ = top :=
          join_top a
    calc
      join (join a b) (meet (compl a) (compl b))
          = meet (join (join a b) (compl a))
              (join (join a b) (compl b)) :=
        join_meet_distrib (join a b) (compl a) (compl b)
      _ = meet top top := by
        rw [hLeft, hRight]
      _ = top :=
        meet_top top
  · have hLeft :
        meet (meet (compl a) (compl b)) a = bot := by
      calc
        meet (meet (compl a) (compl b)) a
            = meet (compl a) (meet (compl b) a) :=
          (meet_assoc (compl a) (compl b) a).symm
        _ = meet (compl b) (meet (compl a) a) :=
          meet_left_comm (compl a) (compl b) a
        _ = meet (compl b) bot := by
          rw [compl_meet a]
        _ = bot :=
          meet_bot (compl b)
    have hRight :
        meet (meet (compl a) (compl b)) b = bot := by
      calc
        meet (meet (compl a) (compl b)) b
            = meet (compl a) (meet (compl b) b) :=
          (meet_assoc (compl a) (compl b) b).symm
        _ = meet (compl a) bot := by
          rw [compl_meet b]
        _ = bot :=
          meet_bot (compl a)
    calc
      meet (join a b) (meet (compl a) (compl b))
          = meet (meet (compl a) (compl b)) (join a b) :=
        meet_comm (join a b) (meet (compl a) (compl b))
      _ = join
            (meet (meet (compl a) (compl b)) a)
            (meet (meet (compl a) (compl b)) b) :=
        meet_join_distrib (meet (compl a) (compl b)) a b
      _ = join bot bot := by
        rw [hLeft, hRight]
      _ = bot :=
        join_bot bot

/-- De Morgan for meets: `¬(a ∧ b) = ¬a ∨ ¬b`. -/
theorem compl_meet_eq_join_compl (a b : B) :
    compl (meet a b) = join (compl a) (compl b) := by
  symm
  apply compl_unique (meet a b) (join (compl a) (compl b))
  · have hRight :
        join (meet a b) (compl b) = join a (compl b) := by
      calc
        join (meet a b) (compl b)
            = join (compl b) (meet a b) :=
          join_comm (meet a b) (compl b)
        _ = meet (join (compl b) a) (join (compl b) b) :=
          join_meet_distrib (compl b) a b
        _ = meet (join a (compl b)) top := by
          rw [join_comm (compl b) a, compl_join b]
        _ = join a (compl b) :=
          meet_top (join a (compl b))
    calc
      join (meet a b) (join (compl a) (compl b))
          = join (compl a) (join (meet a b) (compl b)) :=
        join_left_comm (meet a b) (compl a) (compl b)
      _ = join (compl a) (join a (compl b)) := by
        rw [hRight]
      _ = join (join (compl a) a) (compl b) :=
        join_assoc (compl a) a (compl b)
      _ = join top (compl b) := by
        rw [compl_join a]
      _ = top :=
        top_join (compl b)
  · have hLeft :
        meet (meet a b) (compl a) = bot := by
      calc
        meet (meet a b) (compl a)
            = meet a (meet b (compl a)) :=
          (meet_assoc a b (compl a)).symm
        _ = meet b (meet a (compl a)) :=
          meet_left_comm a b (compl a)
        _ = meet b bot := by
          rw [meet_compl a]
        _ = bot :=
          meet_bot b
    have hRight :
        meet (meet a b) (compl b) = bot := by
      calc
        meet (meet a b) (compl b)
            = meet a (meet b (compl b)) :=
          (meet_assoc a b (compl b)).symm
        _ = meet a bot := by
          rw [meet_compl b]
        _ = bot :=
          meet_bot a
    calc
      meet (meet a b) (join (compl a) (compl b))
          = join
              (meet (meet a b) (compl a))
              (meet (meet a b) (compl b)) :=
        meet_join_distrib (meet a b) (compl a) (compl b)
      _ = join bot bot := by
        rw [hLeft, hRight]
      _ = bot :=
        join_bot bot

end Surface.Boolean.BooleanAlgebraCore
```
