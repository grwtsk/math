# Complete source: GRWTSK.Topology.GeneralTopology.FullTypes.Variant71bf1333ff805d9acc224bb1ad9b4aeea254acc0c3d41bb3cbdc4aec75b94945

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f70445cca321c5d05e14e1ab80b2e1a5af78d26` · SHA-256 `71bf1333ff805d9acc224bb1ad9b4aeea254acc0c3d41bb3cbdc4aec75b94945`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LocalizationBlindness
set_option pp.universes true
set_option pp.explicit true
open ContinuousResearch.LocalizationBlindness
#check SmallPositive
#check GlobalNonnegative
#check NonvanishingOnPositive
#check affineFixture
#check affineFixture_continuous
#check affineFixture_smallPositive
#check affineFixture_later_negative
#check affineFixture_not_global
#check continuous_local_does_not_imply_global
#check bounded_window_can_miss_negative
#check affineFixture_unique_crossing
#check zero_before_negative
#check zero_of_not_global
#check positive_everywhere_of_nonvanishing
#check positive_everywhere_iff_nonvanishing
#check global_nonnegative_of_nonvanishing
#check LowestEigenvalueProfile
#check lowestEigenvalue_crossing
#check lowestEigenvalue_failure_crossing
#check lowestEigenvalue_nonvanishing_iff_positive
#check affineFixture_lowestEigenvalueProfile
```
